class DependentsController < ApplicationController

   # No `new` action because form is provided by PostsController#show
  def create
    @personnel = Personnel.find(params[:personnel_id])
    # Create associated model, just like we did in the console before
    @dependent = @personnel.dependents.create(dependent_params)
    # We want to show the dependent in the context of the Post
    redirect_to @personnel
  end

  private
  def dependent_params
    params.require(:dependent).permit(:name, :relationship)
  end

end
