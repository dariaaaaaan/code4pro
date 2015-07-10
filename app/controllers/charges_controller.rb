class ChargeController < ApplicationController

	before_action :authenticate_user!
	
	def free
		project = Project.find(params[:project_id])
		current_user.subscription.create(project: project)

		redirect_to project

	end
end


