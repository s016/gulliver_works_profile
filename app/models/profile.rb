class Profile < ApplicationRecord
  belongs_to :account

  validates :first_name,
            :last_name,
            :first_naome_kana,
            :last_name_kana,
            :gender,
            :phone,
            :postal_code,
            :address,
            :date_of_birth,
            :biography,
            presense: true
end
