require 'pessoa'
describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'Joao'
    pessoa.idade = 21
    expect(pessoa).to have_attributes(nome: start_with("J"),idade: (be >= 21))
  end

end