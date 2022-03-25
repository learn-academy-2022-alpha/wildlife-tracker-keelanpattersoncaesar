class NewColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :sightings, :string
    add_column :animals, :date, :datetime
    add_column :animals, :longitude, :string
    add_column :animals, :latitude, :string
  end
end
