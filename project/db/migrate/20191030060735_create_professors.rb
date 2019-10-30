class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :firstname
      t.string :lastname
      t.references :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
