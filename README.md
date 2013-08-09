# Deadline

[Associated Press style](http://en.wikipedia.org/wiki/AP_Stylebook) style date & times for JavaScript & Node.js

[![Build Status](https://travis-ci.org/banterability/deadline.png)](https://travis-ci.org/banterability/deadline)

## Usage

Create a Deadline object by passing in a [JavaScript Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date):

```coffee
newYears = new Deadline new Date(2013, 0, 1, 0, 0)
moonWalk = new Deadline new Date(-14159040000)
```

**`#getTime()`** returns an AP-style time string:

```coffee
newYears.getTime()
# > 'midnight'

moonWalk.getTime()
# > '9:56 p.m.'
```

**`#getDate()`** returns an AP-style date string:

```coffee
newYears.getDate()
# > 'Jan. 1'

moonWalk.getDate()
# > 'July 20, 1969'
```
