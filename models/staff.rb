require 'active_record'

class Staff < ActiveRecord::Base
  belongs_to :video
end
