class CommentsController < ApplicationController

  def view
    @link = Link.find(params["id"])
  end

end
