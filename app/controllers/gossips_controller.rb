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
		@gossip = Gossip.new(gossip_params, user_id: 2)
		if @gossip.save
			#redirect_to gossip_create_path
		else
			render 'new'
		end
	end

	private
	def gossip_params
		params.require(:gossip).permit(:content)
	end
end
