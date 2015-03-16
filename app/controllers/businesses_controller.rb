class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    render :index
  end

  def new
    @section = Section.find(params[:section_id])
    @business = Business.new
    render :new
  end

  def create
    @section = Section.find(params[:section_id])
    @business = @section.businesses.new(business_params)
    if @business.save
      flash[:notice] = "New Business Successfully Added"
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def show
    @business = Business.find(params[:id])
  end


 private

 def business_params
   params.require(:business).permit(:name, :address, :phone, :section_id, :website)
 end

end
