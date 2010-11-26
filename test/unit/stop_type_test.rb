require 'test_helper'

class StopTypeTest < ActiveSupport::TestCase

  test "new stop type can't be created without a name" do
    stoptype = StopType.new
    assert !stoptype.save
  end

  test "new stop type can be created when it has a name" do
    stoptype = StopType.new
    stoptype.name = "shnozzle"
    assert stoptype.save
  end

  test "existing stop type can't be saved when name is removed" do
    stoptype = StopType.first
    stoptype.name = nil
    assert !stoptype.save
  end

  test "existing stop type can be save when name is changed" do
    stoptype = StopType.last
    stoptype.name = "Blargh"
    assert stoptype.save
  end

  
end
