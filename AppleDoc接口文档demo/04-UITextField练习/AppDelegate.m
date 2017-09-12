//
//  AppDelegate.h
//  04-UITextField练习

/*
 *亲自体验安装使用AppleDoc（iOS编写接口文档工具(网页版)）
 *
 *赵彤彤 mrzhao12  ttdiOS
 *1107214478@qq.com
 *http://www.jianshu.com/u/fd9db3b2363b
 *本程序是iOS平台下使用AppleDoc（iOS编写接口文档工具(网页版)）
 *1. appledoc --project-name="WQK-Model"  --project-company="AlexCorleone" --company-id="AlexCorleone.WQK-Model" --output="./" --docset-install-path="./" .
 
 生成的信息如下：
 如果设置设置companyID，则生成文件名为 companyID.projectName.docset
 如果不设置则文件名为com.companyname.projectname.projectName.docset
 --project-name，--project-company必须输入
 --output 为生成的txt文件的目录，这里设置为当前目录
 --docset-install-path 为生成docket的目录，这里设置为当前目录。如果此目录不设置，默认会在~/Library/Developer/Shared/Documentation/DocSets/目录生成
 
 */


#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 *  didFinishLaunchingWithOptions
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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
