# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.date :birthday
      t.string :also_known_as, array: true, default: []

      t.timestamps
    end
  end
end
