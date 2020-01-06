class ApplicationController < ActionController::Base
  def all_set
    team_uri = URI.parse("https://api.pandascore.co/lol/teams?filter[location]=JP&token=6gjV6ztWpjlQBFOnEYilG0ZUscha-OCUyQTPyafVputIWr0IW7A")
    team_response = Net::HTTP.get_response(team_uri)
    @team_array = JSON.load(team_response.body)

    player_uri = URI.parse("https://api.pandascore.co/lol/players?filter[nationality]=JP&token=6gjV6ztWpjlQBFOnEYilG0ZUscha-OCUyQTPyafVputIWr0IW7A")
    player_response = Net::HTTP.get_response(player_uri)
    @player_array = JSON.load(player_response.body)
  end
end
