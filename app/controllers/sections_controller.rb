class SectionsController < ApplicationController
  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section successfully added!"
      redirect_to sections_path(@section)
    else
      render :new
    end
  end

  def new
    @section = Section.new
  end

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
    @businesses = @section.businesses
  end

  def edit
    @section = Section.find(params[:id])
    render :edit
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section Successfully Deleted"
    redirect_to sections_path
  end

  def update
    @section = Section.find(params[:id])
    @section.update_attributes(section_params)
    flash[:notice] = "Section Successfully Updated"
    redirect_to sections_path
  end

  private

  def section_params
    params.require(:section).permit(:name)
  end
end
