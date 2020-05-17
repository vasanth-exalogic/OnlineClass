class CreateClassSubs < ActiveRecord::Migration[6.0]
  def change
    create_table :class_subs do |t|
      t.integer :section_id
      t.integer :sub_id

      t.timestamps
    end
  end
end
