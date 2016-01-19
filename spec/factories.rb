FactoryGirl.define do 
  
  factory :post do |post|
     post.title "The Post man knocks twice"
     post.body "Hey you have post" 
   end
   
   factory :postbad do |postbad|
      postbad.title "The Post man knocks twice"
      postbad.body "" 
    end
 
   factory :user do |user|
     #user.email "ben@ben.com"
     user.email { Faker::Internet.email }
     user.password  "testtest"
     #admin true
   end
 
   factory :admin do
     admin true 
   end
   
   factory :comment do |comment|
     comment.comment "A Comment"
     comment.name "The Commment"
     comment.body " What I thought was" 
   end

end