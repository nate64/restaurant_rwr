class Api::MenuItemsController < ApplicationController
  before_action :set_menu, only: [:show, :update, :destroy]
  
  def index
    render json:Menu.all
  end

  def show
  end

  def new
  end

  def update
  end

  def destroy
  end

  private 


end
