class GuestsController < ApplicationController

  # POST /guests
  # POST /guests.json
  def create
    @guest = Guest.new(guest_params)

    respond_to do |format|
      if @guest.save
        format.html { redirect_to event_path(@guest.event), notice: 'Guest was successfully created.' }
      else
        format.html { redirect_to event_path(@guest.event), notice: 'Something Went wrong.' }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:name, :email, :event_id, :comingwith)
    end
end
