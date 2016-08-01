class LinksController < ApplicationController
  before_action :check_for_authorized_user
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
