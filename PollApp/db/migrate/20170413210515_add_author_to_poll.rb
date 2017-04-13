class AddAuthorToPoll < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :author, :string
    add_column :polls, :title, :string
  end
end
