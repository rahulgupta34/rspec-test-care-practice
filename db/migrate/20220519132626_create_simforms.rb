class CreateSimforms < ActiveRecord::Migration[7.0]
  def change
    create_table :simforms do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
