class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(params[:comment])
		@comment.save
		redirect_to photo_path(@comment.photo_id)
	end
	
end
