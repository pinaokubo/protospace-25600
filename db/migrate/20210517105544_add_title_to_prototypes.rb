class AddTitleToPrototypes < ActiveRecord::Migration[6.0]
  def change
    add_column :prototypes, :title, :string
    add_column :prototypes, :catch_copy, :text 
    add_column :prototypes, :concept, :text

    add_reference :prototypes, :user, foreign_key: true
  end
end
