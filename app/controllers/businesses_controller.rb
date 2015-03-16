class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    render :index
  end

  def new
    @business = Business.new
    render :new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      flash[:notice] = "New Business Successfully Added"
      redirect_to businesses_path(@business)
    else
      render :new
    end
  end

  def show
    @business = Business.find(params[:id])
  end


 private

 def business_params
   params.require(:business).permit(:name, :address, :phone, :website)
 end

end
