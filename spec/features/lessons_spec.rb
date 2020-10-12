require 'rails_helper'

RSpec.feature 'Lessons', type: :feature, js: true do
  let(:teacher) { create(:teacher) }
  let!(:lessons) do
    create_list(:lesson, 5, name: 'Boxe', teacher: teacher).map do |lesson|
      lesson.attributes.except('created_at', 'updated_at')
    end
  end

  before do
    create_list(:lesson, 5, name: 'Boxe', teacher: teacher)
    visit('/')
  end

  scenario 'Teacher signs in his account' do
    expect(page).to have_text('Boxe')
  end
end
