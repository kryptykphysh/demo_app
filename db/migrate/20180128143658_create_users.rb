# frozen_string_literal: true

# Create table for User records
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :external_id, null: false

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :external_id, unique: true
  end
end
