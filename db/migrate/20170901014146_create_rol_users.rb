class CreateRolUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :rol_users do |t|
      t.string :name

      t.timestamps
    end
  end
end