RSpec::Matchers.define_negated_matcher :exclude, :include
describe Array.new([1,2,3,4,5]) do
  it 'Include' do
    expect(subject).to include(2)
  end
  it 'Match array' do
    expect(subject).to match_array([1,2,3,4,5])
  end
  it 'contain exactly' do
    expect(subject).to contain_exactly(1,2,3,4,5)
  end
  it {expect(subject).to exclude(6)}
end