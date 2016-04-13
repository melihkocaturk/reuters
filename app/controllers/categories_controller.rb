class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]
	before_action :set_news, only: [:show]

  def show
		@page_title = @category.name
		@page_description = @category.description
  end

  private

	  def set_category
	  	@category = Category.find(params[:id])
	  end

	  def set_news
	    @news = @category.news.order('id DESC').page params[:page]
	  end
end
