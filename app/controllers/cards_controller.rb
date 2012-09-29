class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params[:card])

    if @card.save
      redirect_to cards_path, notice: "Card created."
    else
      render "new"

    end
  end


end
