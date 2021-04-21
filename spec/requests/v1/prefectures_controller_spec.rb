# frozen_string_literal: true
require 'rails_helper'

RSpec.describe V1::PrefecturesController, type: :request do
  let(:account) { create(:account) }
  let(:headers) { { Authorization: "Bearer #{account.jwt}" } }

  describe 'GET /v1/prefectures' do
    let(:request) { get v1_prefectures_path, headers: headers }
    let!(:prefectures) { create(:prefecture) }

    it '都道府県一覧を取得できる' do
      request
      expect(response).to have_http_status(:ok)
      parsed_body = JSON.parse(response.body)
      expect(parsed_body['prefectures'].size).to eq Prefecture.count
    end
  end
end
