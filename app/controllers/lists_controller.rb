class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    list = List.new(params.require(:list).permit(:name))
    if list.save
      redirect_to lists_view_url
    else
      redirect_to lists_new_url
  end
  
  def show
    @list = List.find(params[:id])
    @items = Item.all
  end
  
  def view
    @lists = List.all
  end
  
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_view_url
  end
  
  def delete_item
    
  end
  
  
end
end

