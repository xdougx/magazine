class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :markable_id
      t.string :markable_type

      t.timestamps
    end
  end
end
