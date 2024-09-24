class ProjectsController < ApplicationController
    def new
        
    end
    def create
      @project = Project.new(project_params)

      if @project.save
        developer_ids = params[:project][:developer_ids] || []
        qa_ids = params[:project][:qa_ids] || []

        developer_ids.each do |developer_id|
          @project.users << User.find(developer_id)
        end

        qa_ids.each do |qa_id|
          @project.users << User.find(qa_id)
        end
        redirect_to @project
      end
    end

    def show
      @project = Project.find(params[:id])
      @bugs = @project.bugs
      @developers = @project.users.where(user_type: "developer")
    end

    private
    def project_params
        params.require(:project).permit(:name, :description, :manager_id)
    end
end