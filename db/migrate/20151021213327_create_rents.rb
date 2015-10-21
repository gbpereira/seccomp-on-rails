class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.date :rent_at
      t.boolean :status
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
