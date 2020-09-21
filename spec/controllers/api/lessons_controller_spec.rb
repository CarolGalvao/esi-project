require 'rails_helper'

RSpec.describe Api::LessonsController, type: :controller, api: true do
  let(:data) { JSON.parse(response.body)['data'] }
  let(:params) { {} }

  describe 'GET index' do
    let!(:lessons) { create_list(:lesson, 5).map { |lesson| lesson.attributes.except('created_at', 'updated_at') } }

    before { get :index, params: params }

    it 'returns all lessons' do
      expect(data.map { |lesson| lesson.except('created_at', 'updated_at') }).to eq(lessons)
    end
  end

  describe 'Post create' do
    let(:params) { { lesson: { name: 'joana', description: 'jasdhkerubfelj', link: 'http.com.br' } } }

    before { post :create, params: params }

    it 'returns the created lesson' do
      expect(data.slice(*params[:lesson].keys.map(&:to_s))).to eq(params[:lesson].transform_keys(&:to_s))
    end
  end
end
