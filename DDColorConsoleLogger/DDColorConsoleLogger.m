//
//  DDColorConsoleLogger.m
//  DDColorConsoleLogger
//
//  Copyright (c) 2014 Jozef Izso. MIT license.
//

#import "DDColorConsoleLogger.h"

#define UIColorFromRGB(r, g, b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]

@implementation DDColorConsoleLogger

static DDColorConsoleLogger *sharedInstance;

+ (instancetype)sharedInstance
{
    static dispatch_once_t DDColorConsoleLoggerOnceToken;
    dispatch_once(&DDColorConsoleLoggerOnceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    
    return sharedInstance;
}

- (id)init
{
    if (sharedInstance != nil)
    {
        return nil;
    }
    
    if ((self = [super init]))
    {
        [self setColorsEnabled:YES];
    }
    return self;
}

- (void)loadDefaultColorProfiles
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
    
    [sharedInstance setForegroundColor:tnRed backgroundColor:nil forFlag:LOG_FLAG_ERROR];
    [sharedInstance setForegroundColor:tnOrange backgroundColor:nil forFlag:LOG_FLAG_WARN];
    [sharedInstance setForegroundColor:tnBlack backgroundColor:nil forFlag:LOG_FLAG_INFO];
    [sharedInstance setForegroundColor:tnPurple backgroundColor:nil forFlag:LOG_FLAG_DEBUG];
    [sharedInstance setForegroundColor:tnGray backgroundColor:nil forFlag:LOG_FLAG_VERBOSE];
}

@end
