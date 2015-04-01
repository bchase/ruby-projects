require 'minitest/autorun'
require './file_tally.rb'

class TestFileTally < Minitest::Test
  def tally
    {
      ''    => 4,
      '.txt' => 3,
      '.mp3' => 2,
      '.mp4' => 1
    }
  end

  def dir
    Dir.new('./test-dir')
  end

  def test_tally_files
    assert_equal tally, dir.tally_files
  end
end
