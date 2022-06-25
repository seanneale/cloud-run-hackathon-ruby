require 'sinatra'

$stdout.sync = true

configure do
  set :port, 8080
  set :bind, '0.0.0.0'
end

get '/' do
  'Let the battle begin!'
end

post '/' do
  # response = JSON.parse(request.body.read)

  # my_url = "https://cloud-run-hackathon-ruby-b342lijcia-uc.a.run.app"

  # own_details = response["arena"]["state"][my_url]

  # moves = ['F', 'T', 'L', 'R']

  # if own_details["wasHit"]
  #   ['F', 'L', 'R'].sample
  # else
  #   # Check if anyone can be shot
  #   # find own location
  #   current_loc = own_details.slice("x", "y").values
  #   # find own direction
  #   current_dir = own_details["direction"]
  #   # find possible locations
  #   possible_attack_locations = case current_dir.upcase
  #   when "N"
  #     [1,2,3].map { |i| [current_loc[0], current_loc[1] - i] }
  #   when "E"
  #     [1,2,3].map { |i| [current_loc[0] + i, current_loc[1]] }
  #   when "S"
  #     [1,2,3].map { |i| [current_loc[0], current_loc[1] - i] }
  #   when "W"
  #     [1,2,3].map { |i| [current_loc[0] - i, current_loc[1]] }
  #   end
  #   # any bots in these locations?
  #   if (possible_attack_locations & response["arena"]["state"].values.map { |z| z.slice("x", "y").values }).empty?
  #     ['F', 'L', 'R'].sample
  #   else
  #     "T"
  #   end
  # end
  ['F', 'T', 'L', 'R'].sample
end
