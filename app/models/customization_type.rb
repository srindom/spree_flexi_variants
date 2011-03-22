class CustomizationType < ActiveRecord::Base
  calculated_adjustments
  has_and_belongs_to_many :products
#  has_and_belongs_to_many :customization_value_types, :join_table=>'customization_values_types_join'
  has_many :customization_value_types

  accepts_nested_attributes_for :customization_value_types, :allow_destroy => true
  # from option_type model - , :reject_if => lambda { |ov| ov[:name].blank? || ov[:presentation].blank? }

end