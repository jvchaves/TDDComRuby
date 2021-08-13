require 'pessoa'
describe 'Atributos' do
  $count = 0
  $array = []
  let(:pessoa){ Pessoa.new }
  let!(:contador){
    $count += 1
    $array << ':let!'
  }
  it 'let!' do
    expect(contador).to eq([":let!"])
    expect($count).to eq(1)
  end
  it 'let!' do
    expect(contador).to eq([':let!',':let!'])
    expect($count).to eq(2)
  end
  it 'have_attributes' do
    pessoa.nome = 'Joao'
    pessoa.idade = 21
    expect(pessoa).to have_attributes(nome: start_with("J"),idade: (be >= 21))
  end
  it 'have_attributes' do
    pessoa.nome = 'JV'
    pessoa.idade = 25
    expect(pessoa).to have_attributes(nome: start_with("J"),idade: (be >= 21))
  end

end