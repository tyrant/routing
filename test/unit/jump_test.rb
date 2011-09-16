require 'test_helper'

class JumpTest < ActiveSupport::TestCase

  test "New jump can't be saved with no properties" do
    jump = Jump.new
    assert !jump.save, "Saved jump without any properties"
  end

  test "New jump can't be saved without a length" do
    jump = Jump.new(
      :origin => Stop.new,
      :destination => Stop.new,
      :starttime => '01:01:01'
    )
    assert !jump.save, "Saved the jump without a length"
  end

  test "New jump can't be saved without an origin" do
    jump = Jump.new(
      :length => 5,
      :destination => Stop.new,
      :starttime => '01:01:01'
    )
    assert !jump.save, "Saved the jump without an origin"
  end

  test "New jump can't be saved without a destination" do
    jump = Jump.new(
      :length => 5,
      :origin => Stop.new,
      :starttime => '01:01:01'
    )
    assert !jump.save, "Saved the jump without a destination"
  end 

  test "New jump can't be saved without a starting time" do
    jump = Jump.new(
      :length => 5,
      :origin => Stop.new,
      :destination => Stop.new
    )
    assert !jump.save, "Saved the jump without a starting time"
  end
  
end
