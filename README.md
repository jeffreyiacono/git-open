# Github Goto

Type less and open to repo webpages faster. `github-goto` is a commandline
utility that allows you to specify a repo by name and optionally the author
and will then open the matching resource in your web-browser.

## Usage

Requires the name of the repo that you want to open. You can optionally specify
the user that owns the repo. If you don't pass in a user name, it will fall back
to what you've specified for `$GITHUB_USER` and if that is not set it will fall
back to `whoami`.

For example, if you want to open up repo `bar` for Github user `foo`, you'd run:

    $ ./github-goto.sh foo bar

which will open your web-browser to the given user's repo.

## I'm not using Github!

No problem! This may be because your company has shelled out for Github
Enterprise, so just set `GITHUB_URL` and the script will default to this value.

For example, if your company hosts git at `git.my-company.com`, include this in
your `~/.bashrc` (or where ever you'd like):

    export GITHUB_URL='https://git.my-company.com'

## I need to customize my default username

Again, we've got you covered: just set `GITHUB_USER` and the script will default
to this value. If it is not set, we try to pull out what you've configured
Github to use (via `git config --get github.user`). For the same pattern as
above to set it for your shell.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2012 Jeff Iacono

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
