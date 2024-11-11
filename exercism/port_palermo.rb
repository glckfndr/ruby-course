module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.upcase[0..3].to_sym
  end

  def self.get_terminal(ship_identifier)
    product = ship_identifier[0..2]
    return :A if %w[OIL GAS].include?(product)

    :B
  end
end

Port.get_identifier('Hamburg')
# => :HAMB
Port.get_terminal(:OIL123)
# => :A
