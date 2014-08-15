//
//  DDColorConsoleLogger.h
//  DDColorConsoleLogger
//
//  Copyright (c) 2014 Jozef Izso. MIT license.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/DDTTYLogger.h>

@interface DDColorConsoleLogger : NSObject

/**
 *  Configures the DDTTYLogger shared instance to use colorized output
 *  and sets colors to Tomorrow theme.
 *
 *  @return Returns DDTTYLogger shared instance configured to use colorized output.
 */
+ (DDTTYLogger *)sharedInstance;

@end
