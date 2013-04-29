class CommentsController < ApplicationController


 # before_filter  ,:only => [:show, :create, :update, :delete]




	def create
		@comment = Comment.new(params[:comment])
		@comment.save!
		render @comment
	end

end