class StaffMemberPresenter < ModelPresenter
	#職員の停止フラグのon/offを表現する記号を返す
	# on: BALLOT BOX WITH CHECK (U+2611)
	# off: BALLOT BOX (U+2610)

	delegate :suspended?, to: :object

	def suspended_mark
		suspended? ? view_context.raw('開店中！') :
		view_context.raw('閉店／準備中')
	end
end