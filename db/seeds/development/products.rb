Product.create!(
category: 'トマト',
variety: '在来種',
method: '自然栽培',
description: '霧深さが産む、栄養豊かな丹波産、自然栽培野菜です！',
price: '200',
stock: '50',
net: '5'
	)

staff_members = StaffMember.all

20.times do |n|
	m = staff_members.sample.products.build(

description: '霧深さが産む、栄養豊かな丹波産、自然栽培野菜です！',
price: '200',
stock: '50'
		)

end

categories = %w(キュウリ ナス ハクサイ 人参 ホウレンソウ コマツナ エゴマ)
varieties = %w(在来種 固定種 タキイ)
methods = %w(自然農法 自然栽培 有機栽培（JAS規格） 無農薬／無化学肥料栽培 減農薬栽培 慣行農法)

