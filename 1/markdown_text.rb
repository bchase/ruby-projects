class MarkdownText < String
  def lines
    split("\n").map { |l| MarkdownLine.new l }
  end

  def urls_to_links!
    replace lines.map { |line|
      line.solo_url? ? line.to_url_link : line
    }.join("\n")
  end

  require 'uri'
  require 'active_support/core_ext/string'
  class MarkdownLine < String
    def solo_url?
      return false if blank?
      !!URI.parse(self)
    rescue
      false
    end

    def to_url_link
      "* [#{title_for_url(self)}](#{self})"
    end

    def title_for_url(url)
      html  = %x[ curl -L #{url} ]
      title = html[ %r{<title([^>]+)?>(.+)</title>}, 2 ]
    end
  end
end

# TODO tk # :read !tail -1 ~/pry_history
