class Address < ApplicationRecord
	include StringNormalizer

	belongs_to :customer
	has_one :home_address, dependent: :destroy
	has_one :work_address, dependent: :destroy
	has_many :line_items, dependent: :destroy
	has_many :phones, -> { order(:id) }, dependent: :destroy, autosave: true
	belongs_to :order
	
	before_validation do
		self.postal_code = normalize_as_postal_code(postal_code)
		self.city = normalize_as_name(city)
		self.address1 = normalize_as_name(address1)
		self.address2 = normalize_as_name(address2)
	end

	PREFECTURE_NAMES = %w(
		北海道
		青森県 岩手県 宮城県 秋田県 山形県 福島県
		茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県
		新潟県 富山県 石川県 福井県 山梨県 長野県 岐阜県 静岡県 愛知県
		三重県 滋賀県 京都府 大阪府 兵庫県 奈良県 和歌山県
		鳥取県 島根県 岡山県 広島県 山口県
		徳島県 香川県 愛媛県 高知県
		福岡県 佐賀県 長崎県 熊本県 大分県 宮崎県 鹿児島県
		沖縄県
		日本国外　
	)

	validates :postal_code, format: { with: /\A\d{7}\z/, allow_blank: true }
	validates :prefecture, inclusion: { in: PREFECTURE_NAMES, allow_blank: true }
	validates :phone, format: { with: /\A\+?\d+(-\d+)*\z/, allow_blank: true }

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	PAYMENT_TYPES = [ "現金", "クレジットカード", "注文書"]

end
