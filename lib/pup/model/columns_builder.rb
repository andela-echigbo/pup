module Pup
  module ColumnsBuilder
    private

    def fields_builder(fields)
      columns_definition = ""
      fields.each do |field, constraints|
        columns_definition += field.to_s

        constraints.each do |constraint_type, value|
          columns_definition += " "
          columns_definition += send(constraint_type, value)
        end
        columns_definition += ","
      end
      columns_definition[0..-2]
    end

    def type(value)
      value.to_s.upcase
    end

    def primary_key(value)
      return "PRIMARY KEY" if value
      ""
    end

    def nullable(value)
      return "NOT NULL" unless value
      "NULL"
    end

    def default(value)
      "DEFAULT `#{value}`"
    end

    def autoincrement(value)
      "AUTOINCREMENT" if value
    end
  end
end
