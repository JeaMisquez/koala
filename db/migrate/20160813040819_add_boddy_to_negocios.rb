class AddBoddyToNegocios < ActiveRecord::Migration
  def change
    add_column :negocios, :body, :text
    add_column :negocios, :telephone, :text
    add_column :negocios, :cellphone, :text
    add_column :negocios, :address, :text
    add_column :negocios, :email, :text
    add_column :negocios, :maps, :text
    add_column :negocios, :schedule, :text
  end
end
