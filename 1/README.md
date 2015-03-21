# URL to link in Markdown Text

## Problem

Imagine show notes for a podcast, written in Markdown.

If a line is just a URL, nothing else, it should be converted to an `<li>` that contains a link where 

1. the link points to the URL and 
2. the link text is the contents of the `<title>` for the page

For example, the following:

```
Some random text up here.

http://google.com
facebook.com
```

Should change to:

```
Some random text up here.

* [Google](http://google.com)
* [Welcome to Facebook - Log In, Sign Up or Learn More](facebook.com)
```


## Solution

Implement your solution as `MarkdownText#urls_to_links!`


## Testing

Test your solution is correct with:

```
$ gem install minitest

$ ruby test_markdown_text.rb
```
