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
        module_eval <<-DEF, __FILE__, __LINE__ + 1 if type == Symbol
          def #{column_name}=(value)
            write_attribute(:#{column_name}, value ? value.to_sym : value)
          end
        DEF
      end
    end
  end
end
