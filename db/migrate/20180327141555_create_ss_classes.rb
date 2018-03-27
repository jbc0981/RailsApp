class CreateSsClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :ss_classes do |t|
      t.string :name
      t.string :leader

      t.timestamps
    end
  end
end
