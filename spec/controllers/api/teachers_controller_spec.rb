require 'rails_helper'

RSpec.describe Api::TeachersController, type: :controller, api: true do
  let(:data) { JSON.parse(response.body)['data'] }
  let(:params) { {} }

  describe 'Post create' do
    let(:params) { { teacher: { name: 'Robin' } } }

    before { post :create, params: params }

    it 'returns the created teacher' do
      expect(data.slice(*params[:teacher].keys.map(&:to_s))).to eq(params[:teacher].transform_keys(&:to_s))
    end
  end
end
