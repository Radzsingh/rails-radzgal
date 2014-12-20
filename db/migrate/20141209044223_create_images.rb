class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :decription
      t.references :album, index: true

      t.timestamps
    end
  end
end
