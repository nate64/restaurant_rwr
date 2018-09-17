class Api::ProductsController < ApplicationController
  before_action :set_menu_items, only: [:show, :update, :destroy]

  def index
    render json: Menu_items.all
  end

  def show
    render json: @menu_items
  end

  def create
    menu_item = Menu_item.new(product_params)

    if menu_item.save
      render json: menu_item
    else
      render json: menu_item.errors, status: 422
    end
  end

  def update
    if @menu_item.update(menu_item_params)
      render json: @menu_item
    else
      render json: @menu_item.errors, status: 422
    end
  end

  def destroy
    @menu_item.destroy
  end

  private
    def set_menu_items
      @menu_item = Menu_item.find(params[:id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:name, :description, :price)
    end
end