class CreateSignupItems < ActiveRecord::Migration
  def change
    create_table :signup_items do |t|
      t.integer :quantity
      t.references :signup, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
