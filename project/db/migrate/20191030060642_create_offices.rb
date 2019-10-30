class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.integer :roomnumber

      t.timestamps
    end
  end
end
