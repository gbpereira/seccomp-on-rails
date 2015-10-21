class DateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    valid = value.to_date rescue false
    record.errors[attribute] << (
      options[:message] || "invalid date"
    ) unless valid
  end
end

#https://goo.gl/gNdroN
