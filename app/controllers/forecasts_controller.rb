# require ForecastIO Gem

require 'forecast_io'



class ForecastsController < ApplicationController

  def index

    render json: forecast
    puts forecast

  end

  private
    ForecastIO.configure do |configuration|
      # Hide those API keys!
      configuration.api_key = ENV['DARK_SKY_API_KEY']
  end

  def forecast

    @forecast = ForecastIO.forecast(@lat, @lng, params:{ units: 'auto' })

  end

end
