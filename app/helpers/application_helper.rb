module ApplicationHelper
	def last_news
		return News.last(6)
	end
end
