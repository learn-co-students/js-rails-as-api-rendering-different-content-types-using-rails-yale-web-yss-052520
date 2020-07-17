class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    birds = Bird.all

    # implicit in Rails
    # render 'birds/index.html.erb'

    # # rendering plain text
    # render plain: "Hello #{@birds[3].name}"

    # # rendering JSON
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # # already have collection of data called @birds
    # render json: @birds
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }#.to_json, explicityly converting to json
  end
end
