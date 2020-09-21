RSpec.describe Lessons::Create, type: :service do
  let(:response) { described_class.call(lesson_params) }

  let(:name) { 'Rodrigo' }
  let(:description) { 'this is a very long description' }
  let(:link) { 'www.google.com' }

  let(:lesson_params) do
    {
      name: name,
      description: description,
      link: link
    }
  end

  it 'creates a lesson' do
    expect { response }.to change { Lesson.count }.by(1)
  end

  it 'returns a lesson' do
    expect(response).to be_a(Lesson)
  end
end
