FactoryGirl.define do 
  
  factory :post do |f|
     f.title "The Post man knocks twice"
     f.body "Hey you have post" 
   end
   
   factory :postbad do |f|
      f.title "The Post man knocks twice"
      f.body "" 
    end
 
   factory :user do
     email "ben@ben.com"
     password  "testtest"
     #admin true
   end
 
   factory :admin do
     admin true 
   end
   
end