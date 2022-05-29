class ItemsController < ApplicationController
  
  def index
    @item = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
  end
  
  private
  
  def item_params
    params.require(:item).permit(:title, :body, item_images_images: [])
  end
  
end
