class ProductForm < ActiveRecord::Base
  attr_accessible :product_type_id, :fields_attributes

  belongs_to :product_type

  has_many :fields, :class_name => FieldableForm::Field, :as => :fieldable, :dependent => :destroy
  accepts_nested_attributes_for :fields, :allow_destroy => true
end