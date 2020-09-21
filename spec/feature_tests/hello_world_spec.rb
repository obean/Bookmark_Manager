feature 'testing our web app is working' do
  scenario 'root page shows hello world' do
    visit('/')
    expect(page).to have_content 'Hello world'
  end
end