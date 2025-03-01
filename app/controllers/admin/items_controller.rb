class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
  
  def new
    @item = Item.new
  end

  def create
  end

  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
