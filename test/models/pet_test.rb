require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test "#a pet should have a name to be valid" do
    pet = Pet.new

    assert_not pet.valid?
    assert pet.errors.keys.include?(:name)
  end

  test "#found_days_ago returns an Integer" do
    snoopy = pets(:snoopy) # <-- uses the `test/fixtures/pets.yml` to create the instance
    assert_instance_of Integer, snoopy.found_days_ago
  end
end