class Buzz
  def value(number, proc)
    'Buzz' if proc.call(number, 5)
  end
end
