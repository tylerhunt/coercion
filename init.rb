require 'coercion'

ActiveRecord::Base.class_eval do
  include Coercion

  before_validation :coerce_blanks_to_nils
end
