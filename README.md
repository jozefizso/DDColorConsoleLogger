<p align="center" >
  <img src="LumberjackLogoColors.png" title="Lumberjack logo" float="left">
</p>

# DDColorConsoleLogger
[![Build Status](http://img.shields.io/travis/jozefizso/DDColorConsoleLogger/master.svg?style=flat)](https://travis-ci.org/jozefizso/DDColorConsoleLogger)
[![Pod Version](http://img.shields.io/cocoapods/v/DDColorConsoleLogger.svg?style=flat)](http://cocoadocs.org/docsets/DDColorConsoleLogger/)
[![Pod Platform](http://img.shields.io/cocoapods/p/DDColorConsoleLogger.svg?style=flat)](http://cocoadocs.org/docsets/DDColorConsoleLogger/)
[![Pod License](http://img.shields.io/cocoapods/l/DDColorConsoleLogger.svg?style=flat)](http://choosealicense.com/licenses/mit/)

**DDColorConsoleLogger** is logger with colorful output.


## Requirements

**DDColorConsoleLogger** requires [CocoaLumberjack][1] in your application project and [XcodeColors][2] extension installed in Xcode.

## Installation

DDColorConsoleLogger is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DDColorConsoleLogger', '~> 1.0.0'
```

## Usage

```objc
#import <CocoaLumberjack/DDLog.h>
#import <DDColorConsoleLogger/DDColorConsoleLogger.h>

- (void)setupLogging
{
    [DDLog addLogger:[DDColorConsoleLogger sharedInstance]];
    
    DDLogError(@"Error");
    DDLogWarn(@"Warn");
    DDLogInfo(@"Info");
    DDLogDebug(@"Debug");
    DDLogVerbose(@"Verbose");
}
```

## Author

Jozef Izso, jozef.izso@gmail.com

## License

DDColorConsoleLogger is available under the MIT license. See the [LICENSE file](LICENSE).

[1]: https://github.com/CocoaLumberjack/CocoaLumberjack
[2]: https://github.com/robbiehanson/XcodeColors
