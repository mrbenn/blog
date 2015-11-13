module Base

	class Comments < SitePrism::Page

		attr_accessor :name, :body, :create_btn

		element :name, :class, "#comment_name"
		element :body, :class, "#comment_body"
		element :create_btn, :class, "#new_comment > p:nth-child(4) > input[type=submit]"
	end

end