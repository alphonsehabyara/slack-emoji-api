class Api::V2::EmojisController < ApplicationController

  def index
    @emojis = SlackEmoji.all
  end

  def create
    @emoji = SlackEmoji.create(
      id: params[:id],
      people: params[:people],
      nature: params[:nature],
      food_and_drink: params[:food_and_drink],
      celebration: params[:celebration],
      activity: params[:activity],
      travel_and_places: params[:travel_and_places],
      objects_and_symbols: params[:objects_and_symbols],
      custom: params[:custom],
      emoji: params[:emoji]
      )
    render :show
  end

  def show
    @emoji = SlackEmoji.find_by(id: params[:id])
  end

  def update
    @emoji = SlackEmoji.find_by(id: params[:id])
    @emoji.update({
      id: params[:id],
      people: params[:people],
      nature: params[:nature],
      food_and_drink: params[:food_and_drink],
      celebration: params[:celebration],
      activity: params[:activity],
      travel_and_places: params[:travel_and_places],
      objects_and_symbols: params[:objects_and_symbols],
      custom: params[:custom],
      emoji: params[:emoji]
      })
    render :show
  end

  def destroy
    @emoji = SlackEmoji.find_by(id: params[:id])
    @emoji.destroy
    render json: {message: 'Emoji no longer exist....'}
  end
  
end
