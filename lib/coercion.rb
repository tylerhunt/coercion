module Coercion
  def self.included(base)
    base.extend(ClassMethods)
  end

  def coerce_blanks_to_nils
    self.class.columns.each do |column|
      if column.text? && read_attribute(column.name).blank?
        write_attribute(column.name, nil)
      end
    end
  end

  module ClassMethods
    def coerce_serialized_attributes
      serialized_attributes.each do |attr_name, type|
        define_method("#{attr_name}=") do |value|
          value &&= value.any? ? value.to_sym : nil unless value.is_a?(type)
          write_attribute(attr_name, value)
        end if type == Symbol
      end
    end
  end
end
