# git-open

Type less and open repo webpages faster all from your terminal.

`git-open` is a commandline utility that allows you to specify a repo name
and optionally the author and will then open the matching resource in your
web-browser.

## Usage

Requires the name of the repo that you want to open. You can optionally specify
the user that owns the repo. If you don't pass in a user name it will fall back
to what you've specified for `$GITHUB_USER` and if that is not set it will fall
back to your entry for `git config --get github.user`. (You'd probably have this
set if you're interested in this script after all!)

For example, if you want to open up repo `bar` for Github author `foo`, you'd run:

    $ ./git-open.sh foo bar

which will open your web-browser to the given user's repo.

If, on the other hand, you've configured your local git to include a github
section and your username is set to `baz` and you want to open your `bar` repo:

    $ ./git-open.sh foo # defaults to `baz` for author name

## Installation

You can clone the repo into `~/src` and symlink to `~/bin` and use it anywhere:

    $ git clone https://github.com/jeffreyiacono/git-open.git ~/src/git-open
    $ ln -s ~/src/git-open/git-open.sh ~/bin/git-open
    $ git-open -h
    # Usage: /Users/username/bin/git-open [user name] <repo name>
    # Note: user name will default to $GITHUB_USER or your `git config --get github.user` entry.

And make sure `~/bin` is in your `PATH`.

## I'm using Github Enterprise!

Well lucky you. Nice to see that you work for a company that can shell for it!
In this case just set `GITHUB_URL` in your shell and the script will default to
this value.

For example, if your company hosts its github install at `git.my-company.com`,
include this in your `~/.bashrc.local` (or where ever you'd like):

    export GITHUB_URL='https://git.my-company.com'

## I need to customize my default username

Again, we've got you covered: just set `GITHUB_USER` and the script will default
to this value. If it is not set, we try to pull out what you've configured
Github to use (via `git config --get github.user`). Use the same pattern as
above to make your desired username available to the script.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2019 Jeff Iacono

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
