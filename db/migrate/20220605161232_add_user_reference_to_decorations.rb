# frozen_string_literal: true

class AddUserReferenceToDecorations < ActiveRecord::Migration[5.2]
  def change
    add_reference :decorations, :user, index: true
  end
end
