require "test/unit"

LANGUAGES = Dir.glob('*').filter { File.directory? _1 }.sort!.freeze

LINKED_LIST_EXPECTED_OUTPUT = <<~OUTPUT
Creating a new linked list of integers
It is empty
Pushing 3, 1, 4, 1, and 5
It is not empty
Length is 5
List is 5 -> 1 -> 4 -> 1 -> 3 -> X
Head is 5
Tail is 1 -> 4 -> 1 -> 3 -> X
Tail length is 4
Last is 3
Reversed list is 3 -> 1 -> 4 -> 1 -> 5 -> X
OUTPUT

class ImplementationTest < Test::Unit::TestCase
  [LANGUAGES[0], LANGUAGES[2], LANGUAGES[3]].each do |lang|
    define_method("test_#{lang.downcase}_linked_list") do
      assert_equal LINKED_LIST_EXPECTED_OUTPUT, `#{lang}/test`
    end
  end
end
