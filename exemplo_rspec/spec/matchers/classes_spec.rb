describe 'classes' do
  it 'be_instace_of' do
    expect(10).to be_instance_of(Integer)
  end
  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer)
  end
  it 'respond_to' do
    expect('Joao').to respond_to(:size)
  end
  it 'be_an' do
    str = 'joao'
    expect(str).to be_a(String)
  end
end