class AddBoddyToNegocios < ActiveRecord::Migration
  def change
    add_column :negocios, :body, :text
    add_column :negocios, :telephone, :text
    add_column :negocios, :cellphone, :text
    add_column :negocios, :address, :text
    add_column :negocios, :email, :text
    add_column :negocios, :maps, :text
    add_column :negocios, :schedule, :text
    add_column :negocios, :lat, :text
    add_column :negocios, :lng, :text
  end
end
