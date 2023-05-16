# BaseUtils

### Problem:

- URLUtils contains a property `queryParams` implemented in Objective-C and apparently is NOT available in Swift on `URL` types but only on `NSURL` type. This looks odd to me because when declaring the same category in an App and using the bridging header file, then `queryParams` is also usable from `URL` type too.

Is this the expected behaviour for SPM packages containing Objective-C code?

```swift
// Swift file.
import URLUtils

func testURL() throws { // Problem: Testing with URL does NOT compile (With NSURL is compiles OK)
    let url = URL(string: "https://domain.com/path?a=123")!
    let queryParams = url.queryParams // error: value of type 'URL' has no member 'queryParams'
}
```

### Try it:

Run `swift test`.

### Stackoverflow Question

I asked the same question in Stackoverflow:

[SPM library with Objective-C NSURL category not imported into Swift URL?](https://stackoverflow.com/questions/76201998/spm-library-with-objective-c-nsurl-category-not-imported-into-swift-url)

Reproducing problem: <a href="https://github.com/nacho4d/spm-objc-category/actions/workflows/swift.yml" target=”_blank” ><img src="https://github.com/nacho4d/spm-objc-category/actions/workflows/swift.yml/badge.svg"></a> 
