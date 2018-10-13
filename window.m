//
//  window.m
//  test
//
//  Created by Edwy MANDRET on 10/12/18.
//  Copyright © 2018 Edwy MANDRET. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int createWindow(const char *title)
{
  @autoreleasepool {
    NSUInteger windowStyle = NSWindowStyleMaskTitled |
                             NSWindowStyleMaskClosable |
                             NSWindowStyleMaskResizable;

    NSRect windowRect = NSMakeRect(100, 100, 400, 400);

    NSWindow *window = [[NSWindow alloc] initWithContentRect:windowRect
                                                   styleMask:windowStyle
                                                     backing:NSBackingStoreBuffered
                                                       defer:NO];

    NSString *windowTitle = [NSString stringWithCString:title
                                               encoding:NSUTF8StringEncoding];
    [window setTitle:windowTitle];

    [window orderFrontRegardless];
    [NSApp run];
  }

  return 0;
}
