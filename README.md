# BaseUtils

### Problem:

Property `queryParams` is NOT available in Swift on `URL` types but only on `NSURL` types. This looks odd to me because when declaring the same category in an App and using the bridging header file, then `queryParams` is also usable from `URL` type too.

### Try it:

`swift test`
