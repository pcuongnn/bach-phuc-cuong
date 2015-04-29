class CommentsController < ApplicationController
	def create
		@comment = Comment.create(comment_params)
		redirect_to shoe_path(@comment.commentable)
	end

	def comment_params
		params.require(:comment).permit(:comment,:commentable_id,:commentable_type).merge(user_id: current_user.id)
	end
end
