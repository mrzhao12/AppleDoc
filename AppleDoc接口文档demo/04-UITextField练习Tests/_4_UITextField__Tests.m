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


#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface _4_UITextField__Tests : XCTestCase

@end

@implementation _4_UITextField__Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
