class Fizz
  def value(number, proc)
    'Fizz' if proc.call(number, 3)
  end
end
