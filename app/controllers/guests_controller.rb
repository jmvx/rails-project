class GuestsController < ApplicationController
	def new
		@guest = Guest.new
	end
	
	def create
		@guest = Guest.create(guest_params)
    # redirect_to root_path

    respond_to do |format|
      if @guest.save
        GuestMailer.guest_email(@guest).deliver_now
        format.html { redirect_to root_path }
        format.text { redirect_to root_path }
      end
    end
	end
  
  def show
    @guest = Guest.find(params[:id])
  end

	private
  def guest_params
		params.require(:guest).permit(:name, :response, :carpool, :note)
	end

end
