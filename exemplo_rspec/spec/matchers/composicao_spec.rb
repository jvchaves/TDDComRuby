describe "Ruby on Rails" do
  it { is_expected.to start_with('Ruby').and end_with('Rails')}
  it { expect(fruta).to eq('uva').or eq('pera').or eq('maca')}

  def fruta
    %w(uva pera maca).sample
  end
end