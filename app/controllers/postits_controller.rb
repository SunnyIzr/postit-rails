class PostitsController < ApplicationController
	def index
	end

	def new
		p "/"*1000
	end

	def create
		p "*"*1000
		p params
		p "about to get em"
		p params[:x]
		p params[:y]
		p "does this work"
		@postit = Postit.new(x: params[:x], y: params[:y], content: params[:content])
		@postit.save
		redirect '/'
	end

	def all
		@postits = Postit.all.to_json
		render json: @postits

	end
end