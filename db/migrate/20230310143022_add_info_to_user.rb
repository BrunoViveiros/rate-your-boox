# frozen_string_literal: true

class AddInfoToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users, bulk: true do |t|
      t.string :username, null: false, limit: 15
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.text :bio
    end

    add_index :users, :username, unique: true
  end
end
