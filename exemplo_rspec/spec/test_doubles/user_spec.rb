describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Joao',password: 'secret')

  end
  it 'As_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Joao',password: 'secret')
    user.abc
  end
end
