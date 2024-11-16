module Change
  class ImpossibleCombinationError < StandardError
  end
  class NegativeTargetError < StandardError
  end

  def self.generate(nominations, sum)
    return [] if sum.zero?
    raise NegativeTargetError if sum < 0
    raise ImpossibleCombinationError.new if sum < nominations[0]

    coin_numbers = Array.new(sum + 1, sum / nominations[0] + 1)
    coin_numbers[0] = 0
    coin_list = Array.new(sum + 1, [])

  (nominations[0]..sum).each do |a|
    nominations.each do |coin|
      if coin <= a && coin_numbers[a - coin] + 1 < coin_numbers[a]
          coin_numbers[a] = coin_numbers[a - coin] + 1
          coin_list[a] = coin_list[a - coin].dup
          coin_list[a].push(coin)
        end
      end
  end
  raise ImpossibleCombinationError.new if coin_list[sum].empty?
  coin_list[sum].sort!
end
end
