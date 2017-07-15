def start_testgame
  page.set_rack_session(game: Game.new(Teacup.new, Dinghy.new, Chichi.new))
  visit '/game'
end

class Teacup
  def spelling
    'teacup'
  end
  def definition
    'a cup from which tea is drunk.'
  end
end

class Dinghy
  def spelling
    'dinghy'
  end
  def definition
    'a small boat for recreation or racing.'
  end
end

class Chichi
  def spelling
    'chichi'
  end
  def definition
    'attempting stylish elegance.'
  end
end
