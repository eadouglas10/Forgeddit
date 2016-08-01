class CommentsController < ApplicationController

  def view
    @link = Link.find(params["id"])
    @comments = Comment.where(link_id: @link.id)
    @count = @comments.length
    @comment = Comment.new
  end

  def create
    @link = Link.find(params["id"])
    @comment = Comment.create(body: params["comment"]["body"], link_id: @link.id)
    redirect_to "/links/#{@link.id}/comments"
  end

end
