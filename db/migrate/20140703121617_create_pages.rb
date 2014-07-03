class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :number
      t.string :file
      t.string :url
      t.integer :magazine_id

      t.timestamps
    end
  end
end
