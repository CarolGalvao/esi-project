require 'rails_helper'

RSpec.describe Lessons::List, type: :service do
  let(:response) { described_class.call }

  let!(:lessons) { create_list(:lesson, 5) }

  it 'return lessons' do
    expect(response.first).to be_a(Lesson)
  end

  it 'count lessons' do
    expect(response.count).to eq(5)
  end
end
