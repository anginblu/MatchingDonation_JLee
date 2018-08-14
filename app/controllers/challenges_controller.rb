require 'pry'

class ChallengesController < ApplicationController

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      redirect_to @challenge, notice: "Successfully created a new challenge profile."
    else
      errors = @challenge.errors.full_messages
      render 'challenges/new'
    end
  end

  def index
      @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  private
    def challenge_params
      params.require(:challenge).permit(:email, :amount, :donation_count, :total_donation)
    end

end
