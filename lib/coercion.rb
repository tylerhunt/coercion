module Coercion
  def coerce_blanks_to_nils
    self.class.columns.each do |column|
      if column.type == :string
        write_attribute(column.name, nil) if read_attribute(column.name).blank?
      end
    end
  end
end
