class Bottles
  def verse(bottles)
    "#{beer_on_the_wall(bottles)}\n"+
      "#{take_down(bottles)}" +
      "#{bottles_remaining(bottles - 1)}\n"
  end

  def verses(from, to)
    verses = from.downto(to).map { |x| verse(x) }
    verses.join("\n")
  end

  def song
    verses(99,0)
  end

  def bottles_remaining(bottles)
    if bottles == 1
      "1 bottle of beer on the wall."
    elsif bottles == 0
      "no more bottles of beer on the wall."
    elsif bottles < 0
      "99 bottles of beer on the wall."
    else
      "#{bottles} bottles of beer on the wall."
    end
  end

  def beer_on_the_wall(bottles)
    if bottles == 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer."
    elsif bottles == 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer."
    else
      "#{bottles} bottles of beer on the wall, " +
      "#{bottles} bottles of beer."
    end
  end

  def take_down(bottles)
    if bottles == 1
      "Take it down and pass it around, "
    elsif bottles == 0
      "Go to the store and buy some more, "
    else
      "Take one down and pass it around, "
    end
  end
end
