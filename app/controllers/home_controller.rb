class HomeController < ApplicationController
	def index
		@breaking_news = News.order('id DESC').last(5)
		@economy = News.where(category_id: 2).order('id DESC').limit(11).to_a
		@breakingviews = News.where(category_id: 1).order('id DESC').limit(7)
		@travel = News.where(category_id: 9).order('id DESC').limit(6)
		@world = News.where(category_id: 4).order('id DESC').limit(6)
		@tags = NewsTag.joins(:tag).group(:name).limit(15).order('count_news_id DESC').count(:news_id)
	end
end
