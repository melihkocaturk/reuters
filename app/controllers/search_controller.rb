class SearchController < ApplicationController
	def index
		set_results( News.ransack(params[:q]) )
	end

	def tag
		set_results( News.ransack( tags_name_cont: params[:q]) )
		render "index"
	end

  def set_results(search)
    if search.nil?
      @results = []
    else
      @results = search.result(distinct: true).order('id DESC').page params[:page]
    end
  end
end
