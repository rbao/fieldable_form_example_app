class CreateProductForms < ActiveRecord::Migration
  def change
    create_table :product_forms do |t|
      t.integer :product_type_id

      t.timestamps
    end
  end
end
