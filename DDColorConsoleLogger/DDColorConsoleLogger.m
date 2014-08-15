//
//  DDColorConsoleLogger.m
//  DDColorConsoleLogger
//
//  Copyright (c) 2014 Jozef Izso. MIT license.
//

#import "DDColorConsoleLogger.h"

#define UIColorFromRGB(r, g, b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]

@implementation DDColorConsoleLogger

+ (DDTTYLogger *)sharedInstance
{
    static dispatch_once_t DDColorConsoleLoggerOnceToken;
    dispatch_once(&DDColorConsoleLoggerOnceToken, ^{
        DDTTYLogger *logger = [DDTTYLogger sharedInstance];
        
        [logger clearAllColors];
        [DDColorConsoleLogger initColors:logger];
        logger.colorsEnabled = YES;
    });
    
    return [DDTTYLogger sharedInstance];
}

+ (void)initColors:(DDTTYLogger *)logger
{
    // tomorrow night colors
    UIColor *tnBlack = UIColorFromRGB(77, 77, 76);
    UIColor *tnGray = UIColorFromRGB(142, 144, 140);
    UIColor *tnRed = UIColorFromRGB(200, 40, 41);
    UIColor *tnOrange = UIColorFromRGB(245, 135, 31);
    UIColor *tnYellow __unused = UIColorFromRGB(234, 183, 0);
    UIColor *tnGreen __unused = UIColorFromRGB(113, 140, 0);
    UIColor *tnAqua __unused = UIColorFromRGB(62, 153, 159);
    UIColor *tnBlue __unused = UIColorFromRGB(66, 113, 174);
    UIColor *tnPurple __unused = UIColorFromRGB(137, 89, 168);
    
    [logger setForegroundColor:tnRed backgroundColor:nil forFlag:LOG_FLAG_ERROR];
    [logger setForegroundColor:tnOrange backgroundColor:nil forFlag:LOG_FLAG_WARN];
    [logger setForegroundColor:tnBlack backgroundColor:nil forFlag:LOG_FLAG_INFO];
    [logger setForegroundColor:tnPurple backgroundColor:nil forFlag:LOG_FLAG_DEBUG];
    [logger setForegroundColor:tnGray backgroundColor:nil forFlag:LOG_FLAG_VERBOSE];
}

@end
