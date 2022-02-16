class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.datetime :last_hugged_at
      t.string :email
      t.boolean :fluffy
      t.string :colour
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
