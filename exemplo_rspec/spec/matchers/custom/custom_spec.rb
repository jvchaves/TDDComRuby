RSpec::Matchers.define :be_a_mutiple_of do |expect|
  match do |actual|
    actual % expect == 0
  end
  failure_message do |actual|
    "Expected that #{actual} would be a multiple of #{expect}!"
  end
  description do
    "Be a multiple of #{expect}!"
  end
end

describe 18, 'Custom Matcher' do
  it {is_expected.to be_a_mutiple_of(3)}
end