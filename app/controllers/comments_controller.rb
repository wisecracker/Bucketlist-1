class CommentsController < ApplicationController


 # before_filter  ,:only => [:show, :create, :update, :delete]

 def index
 	@comments = Comments.all 
 end


def create
	@comment = Comment.new(params[:comment])
	@comment.save!
	

	respond_to do |format|
		format.html do 
			render :partial => 'comments/comment', :locals => { :comment => @comment }, 
			:content_type => 'text/html'#<== same thing as render @comment 
		end
	

	#render :template => 'comments/create', :locals => { :comment => @comment }, 
	#:content_type => 'text/javascript'
end
def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

end

end