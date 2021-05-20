class CreatePlaygrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :playgrounds do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :twitter

      t.timestamps
    end
  end
end
