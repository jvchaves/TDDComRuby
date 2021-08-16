describe 'Matcher Output' do
  it{expect{puts 'jv'}.to output.to_stdout}
  it{expect{print 'jv'}.to output('jv').to_stdout}
  it{expect{puts 'jv'}.to output(/jv/).to_stdout}

end