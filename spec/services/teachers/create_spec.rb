require 'rails_helper'

RSpec.describe Teachers::Create, type: :service do
  let(:response) { described_class.call(teacher_params) }

  let(:name) { 'Rodrigo' }

  let(:teacher_params) do
    {
      name: name
    }
  end

  it 'creates a teacher' do
    expect { response }.to change { Teacher.count }.by(1)
  end

  it 'returns a teacher' do
    expect(response).to be_a(Teacher)
  end
end
