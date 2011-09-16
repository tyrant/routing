require 'test_helper'

class StopTypeTest < ActiveSupport::TestCase

  test "new stop type can't be created without a name" do
    stoptype = StopType.new
    assert !stoptype.save, "New stop was saved without a name"
  end

  test "new stop type can be created when it has a name" do
    stoptype = StopType.new
    stoptype.name = "shnozzle"
    assert stoptype.save, "New stop was saved with a name"
  end

  test "existing stop type can't be saved when name is removed" do
    stoptype = StopType.first
    stoptype.name = nil
    assert !stoptype.save, "Existing stop was saved when its name was set to nil"
  end

  test "existing stop type can be saved when name is changed" do
    stoptype = StopType.last
    stoptype.name = "Blargh"
    assert stoptype.save, "Existing stop was saved when its name was changed"
  end

  
end
