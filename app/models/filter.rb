class Filter < ActiveRecord::Base
  attr_accessible :airport_id, :code, :outdoor_adventurer, :public_transport, :urban, :walkable
  belongs_to :airport

  def get_ave_time(destination_id, airport_code, date)
    # location = airport_code
    api_endpoint = 'http://api.wunderground.com/api/991c88d7b9f736de/conditions/q/CA/#{airport_code}.json'
    response = HTTParty.get(API_ENDPOINT)
    ave_time = response['observation']['average_time']
    t = Temperature.new
    t.ave_time = ave_time
    # t.destination_id =
    t.save
  end

  def save_all_ave_times_for(destination_id)
    # array_of_days = ...code
    array_of_days.each do |day|
      get_ave_time(day)
    end
  end

  def save_ave_times_for_array_of_destiantions(array)
    ['ORD', 'DCA'].each do |code|
      save_all_ave_times_for(code)
    end
  end

  end
end
