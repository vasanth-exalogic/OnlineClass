class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.integer :batch_id
      t.string :section

      t.timestamps
    end
  end
end
