FactoryBot.define do
  factory :product_image do
    image    {File.open("#{Rails.root}/public/images/user-profile.jpg")}
    
  end
end
