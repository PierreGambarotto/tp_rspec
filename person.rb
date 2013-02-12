require_relative './authentication'
class Person
   attr_accessor :first_name, :last_name, :id

  include Authentication
  def initialize
    @first_name = @last_name = @id = ""
  end

  def valid?
    not (last_name.nil?|| last_name.empty? || first_name.nil? || first_name.empty? || id.nil? || id.empty?)
  end

end
