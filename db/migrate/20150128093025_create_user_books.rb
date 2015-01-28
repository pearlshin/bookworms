class CreateUserBooks < ActiveRecord::Migration
  def change
    create_table :user_books do |t|
      t.references :user
      t.references :book

      t.timestamps
    end
  end
end
