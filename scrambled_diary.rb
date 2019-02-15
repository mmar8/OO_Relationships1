class ScramlbeDiary

  def initialize(contents)
    @contents = contents
  end

  def do_thing(string)
   string.does_something(@contents)
  end
end

class Scramble_by_reversing

  def initialize(contents)
    @contents = contents
  end

  def does_something(text)
    text.reverse
  end
end

puts ScramlbeDiary.new(Scramble_by_reversing.new('HIMARIA')).do_thing('HIMARIA')



# class Scramble_by_advancing_chars
#   def does_something()
#
#   end
# end
#
# class Unscramble_by_reversing_chars
#   def does_something()
#
#   end
#
# end



# class Unscramble_by_reversing
#   def does_something()
#
#   end
# end
