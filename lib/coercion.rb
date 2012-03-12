require 'coercion/version'
require 'coercion/railtie' if defined?(::Rails::Railtie)

module Coercion
  module CoerceEmptyStringsToNil
    def write_attribute(attr_name, value)
      value = nil if value.is_a?(String) && value.empty?
      super
    end
  end

  module StripStrings
    def write_attribute(attr_name, value)
      value = value.strip if value.is_a?(String)
      super(attr_name, value)
    end
  end
end
