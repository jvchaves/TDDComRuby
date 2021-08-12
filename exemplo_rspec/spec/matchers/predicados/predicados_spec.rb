describe 'Predicados' do
  it 'be true' do
    expect(1.odd?).to be true
  end
  it 'odd' do
    expect(1).to be_odd
  end
  it 'even' do
    expect(2).to be_even
  end

end