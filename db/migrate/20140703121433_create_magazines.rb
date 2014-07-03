class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :name
      t.string :thumb
      t.text :description

      t.timestamps
    end
  end
end
