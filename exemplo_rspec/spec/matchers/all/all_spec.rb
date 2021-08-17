describe 'all',:collection do
  it {expect([11,21,3]).to all (be_odd) and be_an(Integer)}
  it {expect(['ruby','rails']).to all(be_an(String).and include('r'))}
end