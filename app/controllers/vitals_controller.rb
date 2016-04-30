class VitalsController < ApplicationController

  def create 
    @child = Child.find(params[:child_id])
    @vital = @child.vitals.create(vital_params)
    redirect_to child_path(@child)
  end 

def show
    @vital = Vital.find(params[:id])
end

def update 
end

  def edit
    @vital = Vital.find(params[:id])
    @child = Child.find(params[:id])
  end

  private 
    def vital_params
      params.require(:vital).permit(:Height, :Weight, :HeadCircumference, :Date)
    end
end
