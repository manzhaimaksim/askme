class AddAvatarColorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar_color, :string
  end
end
