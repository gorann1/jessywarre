class ReservationsController < ApplicationController
  layout 'reservations'
  before_action :authenticate_user!

  def index

  end

  def create
    @reservation = current_user.reservations.create(reservation_params)
    redirect_to @reservation.location, notice: "Vaša rezervacija je kreirana!"
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :total, :location_id)
  end
end
