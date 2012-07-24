module Util
  def self.constantize a_string
    a_string.downcase.gsub(' ', '_')
  end
end
