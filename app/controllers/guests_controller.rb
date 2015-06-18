class GuestsController < ApplicationController
	def new
		@guest = Guest.new
	end
	
	def create
    @eventDate = Event.select(:date).last(1)[0].date
		@guest = Guest.create(guest_params)
    respond_to do |format|
      if @guest.save
        @guest.update_columns(:rsvpDate => @eventDate)
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
		params.require(:guest).permit(:name, :response, :carpool, :note, :rsvpDate)
	end

end
