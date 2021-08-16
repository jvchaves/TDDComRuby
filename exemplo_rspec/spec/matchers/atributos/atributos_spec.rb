require 'pessoa'
describe 'Atributos' do
  around(:each) do |teste|
    puts 'Antes'
    @pessoa = Pessoa.new
    teste.run
    @pessoa.nome = 'Sem nome'
    puts 'Depois'
    puts @pessoa.nome

  end
  before(:all) do
    puts 'Antes'
    @pessoa = Pessoa.new
  end
  after(:each) do
    @pessoa.nome = 'Sem nome'
    puts 'Depois'
    puts @pessoa.nome
  end
  it 'have_attributes' do
    @pessoa.nome = 'Joao'
    @pessoa.idade = 21
    expect(@pessoa).to have_attributes(nome: start_with("J"),idade: (be >= 21))
  end
  it 'have_attributes' do
    @pessoa.nome = 'JV'
    @pessoa.idade = 25
    expect(@pessoa).to have_attributes(nome: start_with("J"),idade: (be >= 21))
  end

end