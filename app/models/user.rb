class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_one :address
  accepts_nested_attributes_for :address

  with_options presence: true do
       validates :last_name, on: :validates_step3 
       validates :first_name, on: :validates_step3
       validates :last_name_kana, on: :validates_step3
       validates :first_name_kana, on: :validates_step3
       validates :phone_number, on: :validates_step3
       validates :nickname, on: :validates_step3
       validates :password_confirmation, on: :validates_step3
  end
  validates :birthdate_year, :birthdate_month, :birthdate_day, presence: true, on: :validates_step3
  # validates :birthdate_month, presence: true, on: :validates_step3
  # validates :birthdate_day, presence: true, on: :validates_step3

  enum prefecture: {
       "北海道": "北海道",
       "青森県": "青森県",
       "岩手県": "岩手県",
       "宮城県": "宮城県",
       "秋田県": "秋田県",
       "山形県": "山形県",
       "福島県": "福島県",
       "茨城県": "茨城県",
       "栃木県": "栃木県",
       "群馬県": "群馬県",
       "埼玉県": "埼玉県",
       "千葉県": "千葉県",
       "東京都": "東京都",
       "神奈川県": "神奈川県",
       "新潟県": "新潟県",
       "富山県": "富山県",
       "石川県": "石川県",
       "福井県": "福井県",
       "山梨県": "山梨県",
       "長野県": "長野県",
       "岐阜県": "岐阜県",
       "静岡県": "静岡県",
       "愛知県": "愛知県",
       "三重県": "三重県",
       "滋賀県": "滋賀県",
       "京都府": "京都府",
       "大阪府": "大阪府",
       "兵庫県": "兵庫県",
       "奈良県": "奈良県",
       "和歌山県": "和歌山県",
       "鳥取県": "鳥取県",
       "島根県": "島根県",
       "岡山県": "岡山県",
       "広島県": "広島県",
       "山口県": "山口県",
       "徳島県": "徳島県",
       "香川県": "香川県",
       "愛媛県": "愛媛県",
       "高知県": "高知県",
       "福岡県": "福岡県",
       "佐賀県": "佐賀県",
       "長崎県": "長崎県",
       }
end
