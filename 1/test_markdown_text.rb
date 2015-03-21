require 'minitest/autorun'
require './markdown_text.rb'

class TestMarkdownText < Minitest::Test
  def url_to_links_input
    open('url_to_links_input.md').readlines.join.chomp
  end

  def url_to_links_output
    open('url_to_links_output.md').readlines.join.chomp
  end

  def test_urls_to_links
    md = MarkdownText.new(url_to_links_input)
    assert_equal url_to_links_output, md.urls_to_links!
  end
end
