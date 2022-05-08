# frozen_string_literal: true

class MainController < ApplicationController
  before_action :set_page_options

  def index
    @brands = Brand.limit(3)
    @hits   = Product.all
  end

  def set_page_options
    @page_title       = 'Mobile Phones'
    @page_description = 'Mobile Phones'
    @page_keywords    = 'Apple HONOR Samsung'
  end
end
