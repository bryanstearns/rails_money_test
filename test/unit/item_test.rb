require File.dirname(__FILE__) + '/../test_helper'

class ItemTest < ActiveSupport::TestCase
  test "item should be invalid without price" do
    item = Item.new(:count => 10)
    assert !item.valid?
    assert item.errors.invalid?(:price)
  end

  test "item should be invalid without count" do
    item = Item.new(:price => 10)
    assert !item.valid?
    assert item.errors.invalid?(:count)
  end

  test "item should be valid with price and count" do
    item = Item.new(:price => 2.50, :count => 5)
    assert item.valid?
    assert !item.errors.invalid?(:price)
    assert !item.errors.invalid?(:count)
  end

=begin
  test "item should be valid with price_in_cents" do
    item = Item.new(:price_in_cents => 200)
    assert item.valid?, "#{item.inspect} - #{item.errors.full_messages.to_sentence}"
    assert !item.errors.invalid?(:price)
  end
=end

  test "item should be invalid with excessive price" do
    item = Item.new(:price => 80)
    assert !item.valid?, "#{item.inspect} - #{item.errors.full_messages.to_sentence}"
    assert item.errors.invalid?(:price)
  end

=begin
  test "item should be invalid with excessive price_in_cents" do
    item = Item.new(:price_in_cents => 80_00)
    assert !item.valid?
    assert item.errors.invalid?(:price)
  end
=end
end
