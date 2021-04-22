class CreateUfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ufs do |t|
      t.string :unit
      t.date :date
      t.float :value

      t.timestamps
    end
  end
end
