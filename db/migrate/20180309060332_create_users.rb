class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, index: true
      t.string :name
      t.date :born_at

      t.timestamps
    end
  end
end
