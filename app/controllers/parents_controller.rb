class ParentsController < ApplicationController
  
  #set authentication
  http_basic_authenticate_with name: "admin", password: "password"

  def create 
    @child = Child.find(params[:child_id])
    @parent = @child.parents.create(parent_params)
    redirect_to child_path(@child)
  end 

  def edit
    @parent = Parent.find(params[:id])
    @child = Child.find(params[:child_id])
  end

def show
    @parent = Parent.find(params[:id])
    @child = Child.find(params[:child_id])
end

def update 
  @child = Child.find(params[:child_id])
  redirect_to child_path(@child.id)
end

  def destroy
    @child = Child.find(params[:child_id])
    redirect_to child_path(:id => @child.id)
  end
  
  private 
    def parent_params
      params.require(:parent).permit(:PLastName, :PFirstName, :Email, :Phone)
    end
end
