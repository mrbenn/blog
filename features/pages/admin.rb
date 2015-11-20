module Base

	class Admin < SitePrism::Page

		#debug yeah baby
		def hey
			puts "hello"			
		end
  
		attr_accessor :admin, :email, :password, :login_btn, :new_btn, 
					  :title, :body, :create_btn


 		element :email, :class, "#user_email"
 		element :password, :class, "#user_password"
 		element :login_btn, :class, "#new_user > div.actions > input[type=submit]"

 		
 		element :new_btn, :class, "#header > div > button:nth-child(1) > a"
 		
 		element :title, :class, "#post_title"
 		element :body, :class, "#post_body"
 		element :create_btn, :class, "#new_post > p:nth-child(5) > input[type=submit]"

	end
end