class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.attachment :avatar
      t.timestamps
    end
  end
end
