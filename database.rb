require 'sqlite3'
require 'active_record'

include ActiveRecord::Tasks

class Database
  def self.connect!
    
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.establish_connection(
      adapter: 'mysql2',
      database: 'active_record_class',
      username: 'root',
      password: 'Despinoza#2015',
      host: 'localhost'
    )
  end

  def self.generate_schema!
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
