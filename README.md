classy-initScope [![Build Status](https://travis-ci.org/wuxiaoying/classy-initScope.svg)](https://travis-ci.org/wuxiaoying/classy-initScope)
=========

This is plugin that initializes variables on the scope with Angular Classy.

## Install

Install with `bower`:

```shell
bower install classy-initScope
```

Add to your `index.html`:

```html
<script src="/bower_components/angular/angular.js"></script>
<script src="/bower_components/angular-classy/angular-classy.js"></script>
<script src="/bower_components/classy-computed/classy-initScope.js"></script>
```

Add `classy` and `classy-initScope` to your application module.

```javascript
var app = angular.module('app', ['classy', 'classy-initScope']);
```

## Running Tests

Download this repo, `cd` into the repo's directory then run:

```shell
npm install
npm install -g bower # If bower isn't already installed
bower install
npm test
```

## Usage Examples

### Simple initScope property

This makes $scope.cow to initialize as "bessie"

```javascript
app.classy.controller({
	
	// ...

	initScope: {
		cow: "bessie"
	}
});
```

### initScope property with function 

This is useful if you want to use services or do other initial work while setting the initial scope variables. 

```javascript
app.classy.controller({
	
	// ...

	initScope: function () {
	    var cowName = "bessie";
	    return {
	       cow: cowName
	    };
	}
});
```

## License

The MIT License

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
