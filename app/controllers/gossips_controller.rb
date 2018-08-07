class GossipsController < ApplicationController
	def index
		@gossip = Gossip.all
	end
end
