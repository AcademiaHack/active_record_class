require_relative 'database'
require_relative 'model/show'
require_relative 'model/episode'
require_relative 'model/video'

Database.connect!
Database.migrate!

video = Video.new

# show = Show.create!(name: 'Big Bang Theory')
#
# first_episode = show.episodes.create!(name: 'Pilot')
# second_episode = show.episodes.create!(name: 'The Big Bran Hypothesis')
#
# episode_names = show.episodes.pluck(:name)
#
# puts "#{show.name} has #{show.episodes.size} episodes named #{episode_names.join(', ')}."
