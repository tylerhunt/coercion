module Coercion
  class Railtie < Rails::Railtie
    initializer 'coercion.initialize' do |app|
      ActiveSupport.on_load(:active_record) do
        include Coercion::CoerceEmptyStringsToNil
        include Coercion::StripStrings
      end
    end
  end
end
