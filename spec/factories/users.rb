FactoryBot.define do
    factory :user do
        last_name               {"nari"}
        first_name              {"mako"}
        last_name_kana          {"ナリ"}
        first_name_kana         {"マコ"}
        birthdate_year          {"1990"}
        birthdate_month         {"07"}
        birthdate_day           {"31"}
        email                   {Faker::Internet.email}
        phone_number            {Faker::Number.number(10)}
        password                {"00000000"}
        password_confirmation   {"00000000"}
        nickname                {"makonari"}
    end
end

