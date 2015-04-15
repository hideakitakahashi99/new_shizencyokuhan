atom_feed do |feed|
	feed.title "Who bought #{@product.category}"

	latest_order = @product.addresses.sort_by(&:updated_at).last
	feed.updated( latest_address && latest_address.updated_at )

	@product.adresses.each do |address|
		feed.entry(address) do |entry|
			entry.title "Order #{address.id}"
			entry.summary type: 'xhtml' do |xhtml|
				xhtml.p "Shipped to #{address.prefecture}"

				xhtml.table do
					xhtml.tr do
						xhtml.th 'Product'
						xhtml.th 'Quantity'
						xhtml.th 'Total Price'
					end
				address.line_items.each do |item|
					xhtml.tr do
						xhtml.td item.product.category
						xhtml.td item.quantity
						xhtml.td item.total_price
					end
				end
				xhtml.tr do
					xhtml.th 'total', colspan: 2
					xhtml.th address.line_items.map(&:total_price).sum
				end
			end

			xhtml.p "Paid by "
		end
		entry.author do |author|
			entry.name address.customer.id
			entry.email address.customer.email
			end
			end
			end
			end



