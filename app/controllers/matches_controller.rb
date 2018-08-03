require 'pry'

class MatchesController < ApplicationController

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to @match, notice: "Successfully created a new match profile."
    else
      errors = @match.errors.full_messages
      render 'matches/new'
    end
  end

  def index
      @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  private
    def match_params
      params.require(:match).permit(:email, :max_amount, :active, :ratio, :fixed_match)
    end

end
