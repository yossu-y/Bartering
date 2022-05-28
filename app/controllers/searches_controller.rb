class SearchesController < ApplicationController
  def search
    @content=params[:content]
    @records=Item.where(is_active: 1).search_for(@content)
  end
  
end
