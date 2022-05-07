# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
    set_page_options
  end

  def edit
    @product = Product.find(params[:id])
    set_page_options
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def new
    @product = Product.new
  end

  def create
    if params['product']['img'].nil?
      params['product']['img'] = 'no_image.jpg'
    else
      image_load
    end
    @product = Product.new(product_params)
    product_save
  end

  def destroy
    @product = Product.find(params[:id])
    @product.hit = 0
    @product.destroy
  end

  after_action :register_visit, only: [:show]

  helper_method :recent_products
  attr_accessor :product

  def recent_products
    [] if recently.none?
    Product.where(id: recently)
  end

  def recently
    session[:viewed_products] ||= []
  end

  def register_visit
    session[:viewed_products] ||= []
    session[:viewed_products] = ([@product.id] + session[:viewed_products])
                                .uniq
                                .take(3)
  end

  def set_page_options
    set_meta_tags product.slice(:title, :keywords, :description)
    add_breadcrumb 'Home', :root_path, title: 'Home'
  end

  private

  def product_params
    params.require(:product).permit(:title, :content, :description, :img, :galleries, :price, :category_id)
  end

  def product_save
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def image_load
    uploaded_io = product_params['img']
    File.binwrite(Rails.root.join('app', 'assets', 'images', uploaded_io.original_filename),
                  uploaded_io.read)
    params['product']['img'] = uploaded_io.original_filename
  end
end
