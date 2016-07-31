class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(url: params["link"]["url"])
    redirect_to links_path
  end
end
