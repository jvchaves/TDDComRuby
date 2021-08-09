describe (1..5), 'Ranges' do
  it 'Cover' do
    is_expected.to cover(2)
  end
  it { is_expected.to cover(2) }
end