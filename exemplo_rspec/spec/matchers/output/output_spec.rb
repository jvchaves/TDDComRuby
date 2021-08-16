describe 'Matcher Output' do
  it{expect{puts 'jv'}.to output.to_stdout}
  it{expect{print 'jv'}.to output('jv').to_stdout}
  it{expect{puts 'jv'}.to output(/jv/).to_stdout}
  #OUTPUT de erro
  it{expect{warn "jv"}.to output.to_stderr}
  it{expect{warn "jv chaves"}.to output(/jv/).to_stderr}
  it{expect{warn "jv"}.to output(/jv/).to_stderr}
end