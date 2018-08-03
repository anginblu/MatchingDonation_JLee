class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      Match.all.where(active: true).each do |i|
        MatchesDonation.create(donation_id: @donation.id, match_id: i.id)
        if i.max_amount <= i.matched_amount
          i.active = false
          i.save
        end
      end
      redirect_to @donation, notice: "Successfully created a new match profile."
    else
      errors = @donation.errors.full_messages
      render 'donations/new'
    end
  end

  def index
    @donations = Donation.all
  end

  def show
    @donation = Donation.find(params[:id])
  end

  private
    def donation_params
      params.require(:donation).permit(:email, :amount)
    end
end
