# Tally Files

## Problem

The objective of this project is to tally files in a given directory by file extension, but ignoring:

* hidden files
* subdirectories

Here is the contents of `./test-dir`:

```
$ tree -a test-dir 

test-dir
├── bar
├── bar.mp3
├── bar.txt
├── baz
├── baz.txt
├── boo
├── foo
├── .foo.hidden
├── foo.mp3
├── foo.mp4
├── foo.txt
└── ignore
    └── foo
```

And here's what we want to accomplish:

```ruby
Dir.new('test-dir').tally_files
# => {
#      ''     => 4,
#      '.txt' => 3,
#      '.mp3' => 2,
#      '.mp4' => 1
#    }
```


## Solution

Implement your solution as `Dir#tally_files`


## Testing

Test your solution is correct with:

```
$ gem install minitest

$ ruby test_file_tally.rb
```
