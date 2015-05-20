class CreateSponsorsSponsors < ActiveRecord::Migration

  def up
    create_table :refinery_sponsors do |t|
      t.string :name
      t.string :sponsor_website
      t.integer :sponsor_image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-sponsors"})
    end

    drop_table :refinery_sponsors

  end

end
