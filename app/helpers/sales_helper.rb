helpers do
	def total_order_costs
		total = 0
		current_user.trackings.each do |tracking|
			total += tracking.order_cost
		end
		total
	end

	def total_sales
		total = 0
		current_user.sales.each do |sale|
			total += sale.price
		end	
		total
	end	

	def net
		net = total_sales - total_order_costs
	end
end