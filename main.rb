require_relative 'database'
require_relative 'models/video'
require_relative 'models/staff'

Database.connect!

# videos = Video.all
#
# out_file = File.new("index.html", "w")
# videos.each do |video|
#   out_file.puts video.to_html + "<br>"
# end
# out_file.close
#
# out_file_txt = File.new("index.txt", "w")
# videos.each do |video|
#   out_file_txt.puts video.to_txt + "\n\n\n"
# end
# out_file_txt.close
