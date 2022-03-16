# frozen_string_literal: true

module Api
  module V1
    class ProductsController < Api::V1::BaseController
      skip_before_action :doorkeeper_authorize!, on: :index

      def index
        @products = Product.all.limit(5)
        respond_with @products
      end
    end
  end
end
