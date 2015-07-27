require 'active_record'

class Video < ActiveRecord::Base
    validates :title, presence: true
end
