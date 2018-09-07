# OmniAuth Zoom

This is an OmniAuth strategy for authenticating to Zoom. To
use it, you'll need to sign up for an OAuth Application ID and Secret
on the [Zoom Applications Page](https://marketplace.zoom.us/).
You can read more about Zoom's OAuth over at their [developer page](https://devdocs.zoom.us/docs/oauth-with-zoom)

## Contributing

see [CONTRIBUTING.md][contributing]

[contributing]: https://github.com/nikhgupta/omniauth-zoom/blob/master/CONTRIBUTING.md

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-zoom'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-zoom

## Usage

If omniauth-zoom is ready to go, you need to add the following lines to your `config/initializers/omniauth.rb`:

    use OmniAuth::Builder do
        provider :zoom, ENV['ZOOM_APP_KEY'], ENV['ZOOM_APP_SECRET']
    end

You need to replace the `ZOOM_APP_KEY` and `ZOOM_APP_SECRET` with your own credentials, you can get them at the Zoom's developer page as mention above.

Open the following URL and connect your Zoom account with your application:

    /auth/zoom

## Supported Rubies

OmniAuth Zoom is tested under 2.3, 2.4, 2.5, JRuby (head) and Rubinius and ruby-head.

[![Build Status](https://secure.travis-ci.org/nikhgupta/omniauth-zoom.png?branch=master)](http://travis-ci.org/nikhgupta/omniauth-zoom)

## License

Copyright (c) 2015 Nikhil Gupta.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
