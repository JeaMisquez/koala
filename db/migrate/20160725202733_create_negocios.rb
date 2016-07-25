class CreateNegocios < ActiveRecord::Migration
  def change
    create_table :negocios do |t|
      t.string :name
      t.text :desc

      t.timestamps null: false
    end
  end
end
