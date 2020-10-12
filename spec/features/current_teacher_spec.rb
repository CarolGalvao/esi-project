require 'rails_helper'

RSpec.feature 'Teacher signs in', type: :feature, js: true do
  let!(:teacher) { create(:teacher, email: email, password: password) }
  let(:email) { 'robinho@email.com' }
  let(:password) { 'password' }

  scenario 'Teacher signs in his account' do
    visit('/entrar')
    fill_in 'Email', with: email
    fill_in 'Senha', with: password
    click_button 'Entrar'
    expect(page).to have_text('Cadastrar aula')
  end
end
