# @example
#   expect(2).to be_an_element_of [1, 2, 3]
RSpec::Matchers.define :be_an_element_of do |expected|
  match do |actual|
    expected.include?(actual)
  end
end
