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
      serialized_attributes.each do |column_name, type|
        define_method("#{attr_name}=") do |value|
          write_attribute(attr_name, value && value.any? ? value.to_sym : nil)
        end if type == Symbol
      end
    end
  end
end
