class ParentsController < ApplicationController
  def create 
    @child = Child.find(params[:child_id])
    @parent = @child.parents.create(parent_params)
    redirect_to child_path(@child)
  end 

  def edit
    @parent = Parent.find(params[:id])
  end
  def show
  end

  def update 
  end

  private 
    def parent_params
      params.require(:parent).permit(:PLastName, :PFirstName, :Email, :Phone)
    end
end
