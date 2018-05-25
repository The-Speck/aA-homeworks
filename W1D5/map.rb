class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    idx = check_key_index(key)

    if idx
      map[idx][1] = value
    else
      map << [key, value]
    end
  end

  def lookup(key)
    map.each do |pair|
      return pair.last if pair.first == key
    end
    nil
  end

  def remove(key)
    idx = check_key_index(key)

    idx ? map.delete_at(idx) : nil
  end

  def show
    p map
  end

  private
  attr_accessor :map

  def check_key_index(key)
    map.each_with_index do |pair, i|
      return i if pair.first == key
    end
    nil
  end
end

p "initial creation"
map = Map.new
map.assign("w", 1)
map.assign("a", 2)
map.assign("s", 3)
map.assign("d", 4)
map.show

p "lookup"
p map.lookup("w")
p map.lookup("j")

p "reassign"
map.assign("w", 5)
map.show

p "remove"
map.remove("w")
map.show

p "remove nonexistant"
map.remove("o")
map.show
