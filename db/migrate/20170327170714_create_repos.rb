# frozen_string_literal: true
class CreateRepos < ActiveRecord::Migration[5.0]
  def change
    create_table :repos do |t|
      t.string :title, null: false
      t.string :language, null: false
      t.integer :score, null: false
      t.integer :forks, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
