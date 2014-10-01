class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :owner
      t.string :name
      t.string :surname
      t.integer :age
      t.timestamps
    end
  end
end
