# frozen_string_literal: true

class CreateDecorations < ActiveRecord::Migration[5.2]
  def change
    create_table :decorations do |t|
      t.string  :lastname
      t.string  :country
      t.timestamps
    end
    add_column :decorations, :prodacts, :integer, array: true, default: []
    #add_column :decorations, :quantity, :integer
  end
end
