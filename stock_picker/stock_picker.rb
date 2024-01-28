def stock_picker(prices)
  return nil if prices.empty?
  results = prices.each_with_index.to_a.combination(2).max_by do |buy_day, sell_day|
    sell_day[0] - buy_day[0]
  end
  results.map {|price, days| days}
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
buy_day, sell_day = stock_picker(prices)
puts "Best days to buy and sell: #{buy_day}, #{sell_day}"