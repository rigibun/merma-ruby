class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
  end

  def new
    @item = current_user.exhibits.build
  end

  def show
    @item = Item.find(params[:id])
    @exhibitor = @item.exhibitor
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = current_user.exhibits.build(item_params)
    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def update
  end

  def delete
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :condition)
  end
end
