module ApplicationHelper

	include HtmlBuilder

def document_title
	if @title.present?
		"#{@title} - Health for whole new world"
	else
		'Health for whole new world'
	end
end

end
