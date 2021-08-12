describe 'Satisfy' do
  it {expect(10).to satisfy{|x| x % 2 ==0 }}
  it {
    expect(12).to satisfy('be a mutiple of 3') do |x|
      x % 3 == 0
    end
  }
end