require 'coercion/railtie'

module Coercion
  def write_attribute(attr_name, value)
    if value.is_a?(String)
      value.strip!
      value = nil if value.empty?
    end

    super
  end
end
