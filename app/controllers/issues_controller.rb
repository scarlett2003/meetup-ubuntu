class IssuesController < ApplicationController
  def show
  	# render plain: params[:id].inspect
  	@issue =  Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    Issue.create(issue_params)
    redirect_to :root
  end

	def destroy
	  i = Issue.find(params[:id])
	  i.destroy
	  redirect_to :root
	end


  private
    def issue_params
      params.require(:issue).permit(:title, :content)
    end


end
