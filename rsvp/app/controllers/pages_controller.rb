class PagesController < ApplicationController
	def home
		@guests = Guest.all
	end
end
