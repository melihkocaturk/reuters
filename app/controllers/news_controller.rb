class NewsController < ApplicationController
	before_action :set_news, only: [:show]

  def show
		@page_title = @news.title
		@page_description = @news.description
		@page_keywords = @news.tags.all.map{|a| a.name}.split(',')
		@related_news = News.where(category_id: @news.category).order('id DESC').limit(6)
  end

  private

	  def set_news
	  	@news = News.find(params[:id])
	  end
end
