class ListsController < ApplicationController
  def all
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end
end
