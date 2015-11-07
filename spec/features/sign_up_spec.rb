feature "Users can sign up for Chitter" do

  def sign_up
    visit('/sign_up')
    fill_in('name', with: 'Alaan')
    fill_in('username', with: 'Alaanzr')
    fill_in('email', with: 'Alaanzr@gmail.com')
    fill_in('password', with: 'password')
    click_button('Register')
  end

  scenario "When registering my details" do
    sign_up
    expect(page).to have_content 'Welcome Alaan!'
    expect{sign_up}.to change(Maker, :count).by(1)
  end
 end