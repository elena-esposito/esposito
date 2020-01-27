class PublicationsController < ApplicationController
  def index
    @publications = Publication.order('created_at')
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if @publication.save
      flash[:success] = "The publication was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def publication_params
    params.require(:publication).permit(:title, :summary, :source, :link, :category)
  end
end
