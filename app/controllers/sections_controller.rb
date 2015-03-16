class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render :index
  end

  def show
    @section = Section.find(params[:id])
    render :show
  end
end
