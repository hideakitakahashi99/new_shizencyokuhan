class ProductPresenter < ModelPresenter
	#職員の停止フラグのon/offを表現する記号を返す
	# on: BALLOT BOX WITH CHECK (U+2611)
	# off: BALLOT BOX (U+2610)

	delegate :seed_rising?, to: :object

	def seed_rising_mark
		seed_rising? ? view_context.raw('自家採種') :
		view_context.raw('')
	end
end