class Product < ActiveRecord::Base
  include FieldableForm::EntryValidations

  attr_accessible :name, :product_type_id, :properties
  belongs_to :product_type

  serialize :properties, Hash

  validate_fieldable_form_entry :form_to_validate, :properties

  private
    def form_to_validate
      product_type.product_form
    end
end
