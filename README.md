Puppet Module - Firefox
=======================

Installs Firefox for OS X.

Supported Platforms:

- Darwin

Examples
--------

Install FireFox 24.0 by default:

```
class {'firefox': }
```

Install specific version and language of FireFox:

```
class {'firefox':
  language => 'en-US',
  version => '28.0',
}
```

Firefox versions
----------------

Valid versions of Firefox can be located at: [Mozilla] [Mozilla]

[Mozilla]: https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/


MIT License
-----------

Copyright 2013 Ryan Skoblenick

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
