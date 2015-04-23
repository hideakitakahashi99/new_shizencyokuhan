c = StaffMember.create!(
	farm_name: 'タロウ農園',
	email: 'taro@example.com',
	family_name: '山田',
	given_name: '太郎',
	family_name_kana: 'ヤマダ',
	given_name_kana: 'タロウ',
	password: 'password',
	start_date: Date.today
)

c.create_staff_address!(
	postal_code: '6694312',
	prefecture: '兵庫県',
	city: '丹波市',
	address1: '市島町北奥555',
	address2: 'rails-building807'
	)


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



	city_names = %w(丹波市 篠山市 三田市)

	20.times do |n|
		fn = family_names[n % 4].split(':')
		gn = given_names[n % 5].split(':')

		c = StaffMember.create!(
			farm_name: "#{gn[2]}農園",
			email: "#{fn[2]}.#{gn[2]}@example.com",
			family_name: fn[0],
			given_name: gn[0],
			family_name_kana: fn[1],
			given_name_kana: gn[1],
			password: 'password',
			start_date: (100 - n).days.ago.to_date,
			end_date: n == 0 ? Date.today : nil,
			suspended: n == 1

		)

		c.create_staff_address!(
		postal_code: '6694312',
		prefecture: '兵庫県',
		city: '丹波市',
		address1: '市島町北奥555',
		address2: 'rails-building807'
		)

		
		
       content = Faker::Lorem.sentence(5)
       staff_member_id = [1..20]

		harvests = %w(【収穫予定】トマト 【収穫予定】レタス 【収穫予定】9月24日15:00〜17:00)
		openings = %w(【収穫予定】9月24日15:00〜17:00 【収穫予定】10月2日10:00〜翌10:00 【収穫予定】6月20日9:00〜19:00)
      
      

	end
