class ProductType < ActiveRecord::Base
  attr_accessible :name, :product_form_attributes
  has_one :product_form

  accepts_nested_attributes_for :product_form

  validates :name, :presence => true
end
