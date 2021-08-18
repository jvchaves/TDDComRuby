require 'student'
require 'course'

describe 'Stubs' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new
    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
    course_finished = student.has_finished?(course)
    expect(course_finished).to eq(true)
  end
  it 'Argumentos dinamicos' do
    student = Student.new
    allow(student).to receive(:foo) do |arg|
      if arg == :helo
        'Olá'
      elsif arg == :hi
        'Hi'
      end
    end
    expect(student.foo(:helo)).to eq('Olá')
    expect(student.foo(:hi)).to eq('Hi')
  end
  it 'Qualquer instancia' do
    student = Student.new
    other_student = Student.new
    allow_any_instance_of(Student).to receive(:foo).and_return(true)
    expect(student.foo(:helo)).to be_truthy
    expect(other_student.foo(:hi)).to be_truthy
  end
  it 'Erros' do
    student = Student.new

    allow(student).to receive(:foo).and_raise(RuntimeError)
    expect { student.foo(:helo) }.to raise_error(RuntimeError)

  end

end
