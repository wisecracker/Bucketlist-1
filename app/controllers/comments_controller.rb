class CommentsController < ApplicationController


 # before_filter  ,:only => [:show, :create, :update, :delete]

 def index
 	@comments = Comments.all 
 end


def create
	@comment = Comment.new(params[:comment])
	@comment.save!
	render @comment
end
def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

end

end