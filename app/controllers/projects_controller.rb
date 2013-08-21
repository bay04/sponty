class ProjectsController < ApplicationController


before_action :cap_aydee, only: [:show, :edit, :update, :destroy]



def index
    @projects = Project.all
end


def new
  @project = Project.new
end


def create    
  @project = Project.create(project_params)
  if @project.save
    redirect_to @project
    flash[:notice] = "Project has been created!"
  end
end


def show
end


def edit
end


def update
  if @project.update_attributes(project_params)
    redirect_to @project
    flash[:notice] = "Project has been updated!"
  end
end



def destroy
  @project.destroy
end






private


  def cap_aydee
    @project = Project.find(params[:id])
  end


  def project_params
    params.require(:project).permit(:project_title, :project_description, :project_budget)
  end

end
