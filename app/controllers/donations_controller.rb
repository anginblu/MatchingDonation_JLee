class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      if @donation.recurring
        Installment.create(donation: @donation.id, amount: @donation.installment_amount)
      end
      Match.all.where(active: true).each do |i|
        MatchesDonation.create(donation_id: @donation.id, match_id: i.id)
        if i.max_amount <= i.matched_amount
          i.active = false
          i.save
        end
      end
      Challenge.all.where(active: true).each do |i|
        ChallengesDonation.create(donation_id: @donation.id, challenge_id: i.id)
        if i.challenge_met?
          i.active = false
          i.save
        end
      end
      redirect_to @donation, notice: "Successfully created a new donation profile."
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
      params.require(:donation).permit(:email, :amount, :recurring, :recurring_period, :recurring_length)
    end
end
