//
//  AppDelegate.m
//  AlphaTracker
//
//  Created by Winnie Liang on 9/21/15.
//  Copyright © 2015 Winnie Liang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
//hi

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //CANVAS - WINDOW
    CGRect viewRect = [[UIScreen mainScreen] bounds]; //get the main screen and the bounds of the screen
    self.window = [[UIWindow alloc] initWithFrame:viewRect]; //allocate memory for UI window and initialize object with frame size to the bounds of the mainscreen
    
    //PAINTBRUSH - VIEW CONTROLLER
    self.viewController = [[ViewController alloc] init];
    
    //PAINT - VIEW //Usually we want to encapsulate our view into ViewController.. NOT GOOD TO LEAVE IT HERE
    /*UIView *view = [[UIView alloc] initWithFrame:viewRect];
    view.backgroundColor = [UIColor yellowColor];
    self.viewController.view = view;*/
    
    self.window.rootViewController = self.viewController; //view controller gets control of the window
    [self.window makeKeyAndVisible]; //means it should receive all keyboard and non-touch events
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
