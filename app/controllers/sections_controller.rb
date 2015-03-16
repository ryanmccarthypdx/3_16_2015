class SectionsController < ApplicationController
  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section successfully added!"
      redirect_to sections_path
    else
      render :new
    end
  end

  def new
    @section = Section.new
    render :new
  end

  def index
    @sections = Section.all
    render :index
  end

  def show
    @section = Section.find(params[:id])
    render :show
  end

  private
  def section_params
    params.require(:section).permit(:name)
  end
end
