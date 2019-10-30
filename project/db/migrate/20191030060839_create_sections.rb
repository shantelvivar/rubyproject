class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :sectionname
      t.datetime :sectiontime
      t.string :sectionlocation

      t.timestamps
    end
  end
end
