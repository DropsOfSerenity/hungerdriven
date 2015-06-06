class AddLatAndLonToSignups < ActiveRecord::Migration
  def change
    add_column :signups, :lat, :string
    add_column :signups, :lon, :string
  end
end
