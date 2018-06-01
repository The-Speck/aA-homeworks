require 'rspec'
require 'lru_cache'

describe LRUCache do
  subject(:cache) { LRUCache.new(4) }

  describe "#initialize" do
    it "should initialize with a number that sets max value" do
      expect(cache.max).to eq(4)
    end
  end

  describe "#show" do
    it "should show the elements in the cache" do
      expect(cache.show).to eq([])
    end
  end

  let(:items) {[
    "I walk the line",
    5,
    [1,2,3],
    5,
    -5,
    {a: 1, b: 2, c: 3},
    [1,2,3,4],
    "I walk the line",
    :ring_of_fire,
    "I walk the line",
    {a: 1, b: 2, c: 3}
  ]}

  let(:result) {
    [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
  }

  describe "#add" do
    it "should add items to the cache" do
      2.times { |i| cache.add(items[i]) }
      expect(cache.count).to eq(2)
    end

    it "should add many items to the cache and follor LRU rules" do
      items.each { |el| cache.add(el)}
      expect(cache.show).to eq (result)
    end
  end
end


# johnny_cache = LRUCache.new(4)
#
# johnny_cache.add("I walk the line")
# johnny_cache.add(5)
#
# johnny_cache.count # => returns 2
#
# johnny_cache.add([1,2,3])
# johnny_cache.add(5)
# johnny_cache.add(-5)
# johnny_cache.add({a: 1, b: 2, c: 3})
# johnny_cache.add([1,2,3,4])
# johnny_cache.add("I walk the line")
# johnny_cache.add(:ring_of_fire)
# johnny_cache.add("I walk the line")
# johnny_cache.add({a: 1, b: 2, c: 3})
#
#
# johnny_cache.show
