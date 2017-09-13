class CreateCoffees < ActiveRecord::Migration[5.1]
  def change
    create_table :coffees do |t|
      t.belongs_to :user, foreign_key: true
      t.string :caffeine, null: false, default: "95mg"
      t.string :amount, null: false, default: "16oz"
      t.string :brew, null: false
      t.boolean :ice, null: false, default: false

      t.timestamps
    end
  end
end
