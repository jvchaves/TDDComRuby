describe 'comparation' do
  it '>' do
    expect(5).to be > 1
  end
  it '>=' do
    expect(5).to be >= 1
  end
  it '<' do
    expect(5).to be < 10
  end
  it '<=' do
    expect(5).to be <= 10
  end
  it 'be_between inclusive' do
    expect(5).to be_between(2,7).inclusive
    expect(3).to be_between(2,7).inclusive
    expect(5).to be_between(2,7).inclusive
  end
  # it 'be_between inclusive aggregate failures'do
  #     expect(1).to be_between(2,7).inclusive
  #     expect(3).to be_between(2,7).inclusive
  #     expect(9).to be_between(2,7).inclusive
  # end
  it 'be_between exclusive' do
    expect(5).to be_between(2,7).exclusive
  end
  it 'match' do
    expect("joao@joao.com").to match(/..@../)
  end
  it 'start_with' do
    expect("Fulano de Tal").to start_with('Fulano')
  end
  it 'end_with' do
    expect("Fulano de Tal").to end_with('Tal')
  end
end