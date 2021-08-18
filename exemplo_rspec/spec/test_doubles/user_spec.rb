describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Joao',password: 'secret')

  end

end
