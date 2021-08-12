class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @review = Review.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)

    redirect_to @list
  end

  private

  def list_params
    params.require(:list).permit(:name, :picture_url)
  end
end