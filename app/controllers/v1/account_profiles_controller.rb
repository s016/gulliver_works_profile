module V1
  class AccountProfilesController < ApplicationController
    load_and_authorize_resource :account
    load_and_authorize_resource :account_profile, :throught => :account

    
    def index
      render json: @account_profiles
    end

    def create
      @account.create_account_profile!(account_profile_params)
      render json: @account_profile
    end

    def show
      render json: @account_profile
    end

    def destroy
      @account_profile.destroy!
      head 204
    end

    private
      def account_profile_params
        params.require(:account_profile).permit(
                                                :account_id,
                                                :first_name,
                                                :last_name,
                                                :first_name_kana,
                                                :last_name_kana,
                                                :gender,
                                                :phone,
                                                :postal_code,
                                                :address,
                                                :date_of_birth,
                                                :biography,
                                                )
      end
  end
end
