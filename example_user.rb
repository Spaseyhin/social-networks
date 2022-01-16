# frozen_string_literal: true

class User
  attr_accessor :name, :email

  def initialize(attridutes = {})
    @name = attridutes[:name]
    @email = attridutes[:email]
  end

  def formatted_email
    "#{@name}<#{@email}>"
  end
end
