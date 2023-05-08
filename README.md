# BaseUtils

### Problem:

Property `queryParams` is NOT available in Swift on `URL` types but only on `NSURL` types. This looks odd to me because when declaring the same category in an App and using the bridging header file, then `queryParams` is also usable from `URL` type too.

### Try it:

Open Package.swift in Xcode and run tests.

### Stackoverflow Question

[SPM library with Objective-C NSURL category not imported into Swift URL?](https://stackoverflow.com/questions/76201998/spm-library-with-objective-c-nsurl-category-not-imported-into-swift-url)
