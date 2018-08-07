class GossipsController < ApplicationController
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
			redirect_to rooth_path
		else
			render 'new'
		end
	end

	private
	def gossip_params
		params.require(:gossip).permit(:content)
	end
end
