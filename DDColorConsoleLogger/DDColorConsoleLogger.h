//
//  DDColorConsoleLogger.h
//  DDColorConsoleLogger
//
//  Copyright (c) 2014 Jozef Izso. MIT license.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/DDTTYLogger.h>

@interface DDColorConsoleLogger : DDTTYLogger

+ (instancetype)sharedInstance;

- (id)init;

@end
