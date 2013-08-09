# Deadline

[Associated Press style](http://en.wikipedia.org/wiki/AP_Stylebook) style date & times for JavaScript & Node.js

[![Build Status](https://travis-ci.org/banterability/deadline.png)](https://travis-ci.org/banterability/deadline)

## Usage

Create a Deadline object by passing in a [JavaScript Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date):

```coffee
d = new Deadline new Date(-14159040000)
```

**`#getTime()`** returns an AP-style time string:

```coffee
d.getTime()
# > '9:56 p.m.'
```

**`#getDate()`** returns an AP-style date string:

```coffee
d.getDate()
# > 'July 20, 1969'
```
