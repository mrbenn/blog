FactoryGirl.define do

  factory :post do
    #post 'Hey There'
    title "do do"
    body "Here's some txt"
  end
  
  factory :invalid_post do
    title "nil"
    body "Here's some txt"
  end
  
end