require 'sqlite3'
require 'active_record'

include ActiveRecord::Tasks

class Database
  def self.connect!
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: 'database.sqlite3'
    )
  end

  def self.migrate!
    ActiveRecord::Schema.define do

      create_table :videos do |t|
        t.string :url
        t.string :title
        t.text :description

        t.timestamps null: false
      end
    end
  end
end
