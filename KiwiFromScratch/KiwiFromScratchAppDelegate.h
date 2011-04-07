//
//  KiwiFromScratchAppDelegate.h
//  KiwiFromScratch
//
//  Created by Jonathan on 4/7/11.
//  Copyright 2011 Navel Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KiwiFromScratchViewController;

@interface KiwiFromScratchAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet KiwiFromScratchViewController *viewController;

@end
