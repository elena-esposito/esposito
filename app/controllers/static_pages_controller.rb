class StaticPagesController < ApplicationController
  def home
    @publications = Publication.all
    @panels = Panel.all
    @profile = Profile.last
  end
end
