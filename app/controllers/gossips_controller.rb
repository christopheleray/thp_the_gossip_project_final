class GossipsController < ApplicationController
  before_action :authenticate_user!

	def index
		@gossip = Gossip.all
	end

	def new
		puts "j'affiche le new"
		puts params.inspect
		@gossip = Gossip.new
	end

	def create
		puts "j'affiche le create"
		puts params.inspect
	#@gossip = Gossip.new(content: params[:gossip][:content], user_id: current_user.id)
    @gossip = Gossip.new(gossip_params)
    @gossip.user_id = current_user.id
		if @gossip.save
			redirect_to gossips_path
		else
			render 'new'
		end
	end

	def destroy
		@gossip = Gossip.find(params[:id])
    unless @gossip.user_id == current_user.id
      flash[:alert] = "This gossips does not belong to you"
      redirect_to gossips_path
      return false
    end
		@gossip.destroy
		redirect_to gossips_path
	end

  def show
  	@gossip = Gossip.find(params[:id])
  end


	private
	def gossip_params
		params.require(:gossip).permit(:content)
	end
end
