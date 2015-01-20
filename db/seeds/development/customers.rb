city_names = %w(aomaki akamaki kimaki cyamaki shimaki komaki himaki hyoumaki jyomaki reimaki)

	family_names = %w{
		佐藤:サトウ:sato
		鈴木:スズキ:suzuki
		高橋:タカハシ:takahashi
		田中:タナカ:tanaka
	}


	given_names = %w{
		二郎:ジロウ:jiro
		三郎:サブロウ:saburo
		松子:マツコ:matuko
		竹子:タケコ:takeko
		梅子:ウメコ:umeko
	}


company_names = %w(OIAX ABC XYZ nini fifi hyhy vvv yoyo rere jojo)

10.times do |n|
	10.times do |m|
		cin = city_names[n]
		con = company_names[m]
		fn = family_names[n % 4].split(':')
		gn = given_names[n % 5].split(':')

		c = Customer.create!(
			email: "#{cin}.#{con}@example.jp",
			password: 'password',
			family_name: fn[0],
			given_name: gn[0],
			family_name_kana: fn[1],
			given_name_kana: gn[1]

			)

		if m % 2 == 0
			c.personal_phones.create!(number: sprintf('090-0000-%04d', n * 10 + m))
		end
		c.create_home_address!(
			postal_code: sprintf('%07d', rand(10000000)),
			prefecture: Address::PREFECTURE_NAMES.sample,
			city: city_names.sample,
			address1: '開発1-2-3',
			address2: 'レイルズハイツ301号室'
			)
		if m % 10 == 0
			c.home_address.phones.create!(number: sprintf('03-0000-%04d', n))
		end
		if m % 3 == 0
			c.create_work_address!(
				postal_code: sprintf('%07d', rand(10000000)),
				prefecture: Address::PREFECTURE_NAMES.sample,
				city: city_names.sample,
				address1: '試験4-5-6',
				address2: 'ルビービル2F',
				company_name: company_names.sample
				)
		end
	end
end