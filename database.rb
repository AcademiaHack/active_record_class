# require 'mysql2'
require 'sqlite3'
require 'active_record'

require_relative 'models/video'

class Database
  def self.connect!

    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: 'database',
      # adapter: 'mysql2',
      # database: 'active_record',
      # username: 'root',
      # password: 'Despinoza#2015',
      # host: 'localhost'
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

  def self.migration_20150728154950_create_table_staff!
    ActiveRecord::Schema.define do
      create_table :staff do |t|
        t.string :name
        t.string :rol
        t.timestamps null: false
      end
    end
  end

  def self.migration_2015072815413_add_reference_to_staff!
    ActiveRecord::Schema.define do
      change_table :staff do |t|
        t.references :videos
      end
    end
  end

  def self.migration_20150728160840_change_staff_to_staffs!
    ActiveRecord::Schema.define do
      rename_table :staff, :staffs
    end
  end

  def self.migration_20150728162852_change_videos_to_video_reference!
    ActiveRecord::Schema.define do
      rename_column :staffs, :videos_id, :video_id
    end
  end

  def self.generate_data!
    Video.create(
      url:"http://google.com",
      title: "Titulo del video 1",
      description: "Descripcion del video 1"
    )

    Video.create(
      url:"http://google.com",
      title: "Titulo del video 2",
      description: "Descripcion del video 2"
    )

    # video = Video.new
    # video.url = "http://google.com"
    # video.title = "Titulo del video 1"
    # video.description = "Descripcion del video 1"
    # video.save
  end
end
