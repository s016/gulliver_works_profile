module V1
  class AccountProfilesController < ApplicationController
    load_and_authorize_resource
    
    def index
      render json: @account_profiles
    end

    def create
      @account_profile.save!
      render json: @account_profile, status: created
    end

    def show
      render json: @account_profile
    end

    def destroy
      @account_profile.destroy!
      head 204
    end
  end
end
