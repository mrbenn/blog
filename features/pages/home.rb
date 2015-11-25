module Base

	class Home < SitePrism::Page

		attr_accessor :home, :admin_login
		
		#def initialize(home, admin_login)
		#	@home = home
		#	@admin_btn = admin_btn
		#end

		element :admin_btn, :class, "#sidebar > p > a"
		
	end 
end