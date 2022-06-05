# frozen_string_literal: true

class DecorationController < ApplicationController
  include CartsHelper
  include Pundit::Authorization
  def index
      @decorations = Decoration.all
  end

  #def show
    #@decoration = Decoration.find(params[:id])
    # authorize @decoration
    # set_page_options
    #end

  #def set_page_options
    #set_meta_tags decoration.slice(:cart_id, :lastname, :country)
    #add_breadcrumb 'Home', :root_path, title: 'Home'
    #     end


  def new
    @decoration = Decoration.new
  end

  def create
    @decoration = Decoration.new(decoration_params)
    @decoration.user_id = current_user.id
    @decoration.prodacts = current_cart.product_ids
    @decoration.save
    redirect_to '/'
  end

  private

  def decoration_params
    params.require(:decoration).permit(:lastname, :country)
  end

  helper_method :products

end
