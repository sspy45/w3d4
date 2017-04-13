class FixAuthorDataType < ActiveRecord::Migration[5.0]
  def change
    remove_column :polls, :author, :string
    add_column :polls, :author, :integer
  end

end
