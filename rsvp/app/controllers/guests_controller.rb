class GuestsController < ApplicationController
	def new
		@guest = Guest.new
	end
	
	def create
		@guest = Guest.create(guest_params)
    # redirect_to root_path

    respond_to do |format|
      if @guest.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@guest).deliver
        format.html { redirect_to(@guest) }
        format.json { render :json => @guest }
      end
    end
	end
  
  def show
    @guest = Guest.find(params[:id])
    redirect_to root_path
  end

	private
  def guest_params
		params.require(:guest).permit(:name, :response, :carpool, :note)
	end

end
