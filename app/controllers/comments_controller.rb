class CommentsController < ApplicationController
  before_action :check_for_authorized_user
  def view
    @link = Link.find(params["id"])
    @comments = Comment.where(link_id: @link.id)
    @comment = Comment.new
  end

  def create
    @link = Link.find(params["id"])
    @comment = Comment.create(body: params["comment"]["body"], link_id: @link.id, user_id: current_user.id)
    redirect_to "/links/#{@link.id}/comments"
  end

end
