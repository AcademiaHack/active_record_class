require 'active_record'

class Video < ActiveRecord::Base
    has_many :staffs

    def to_html
      "<h1>#{self.title}</h1>
        <p>#{self.description}</p>
        <a href='#{self.url}'>Link al video</a>"
    end

    def to_txt
      "
      #{self.title}
      ================
      #{self.description}
      Link al video: #{self.url}"
    end
end
