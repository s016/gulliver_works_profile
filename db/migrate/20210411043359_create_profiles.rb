class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles, id: :uuid, comment: '承継元プロフィール' do |t|
      t.references :account, foreign_key: true, type: :uuid
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :gender
      t.string :phone
      t.string :postal_code
      t.string :address
      t.string :date_of_birth
      t.string :biography
    end
  end
end
