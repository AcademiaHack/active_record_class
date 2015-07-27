require 'active_record'

class Episode < ActiveRecord::Base
  belongs_to :show, inverse_of: :episodes, required: true
end
