# frozen_string_literal: true

class ChangeUserBirthday < ActiveRecord::Migration[7.0]
  def self.up
    change_column :users, :birthday, :date
  end

  def self.down
    change_column :users, :birthday, :datetime
  end
end
