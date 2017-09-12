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

#import "UIColor+Extension.h"
#define DEFAULT_VOID_COLOR [UIColor whiteColor]

@implementation UIColor (Extension)

// #000000
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha
{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6)
        return DEFAULT_VOID_COLOR;
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return DEFAULT_VOID_COLOR;
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)color
{
    return [UIColor colorWithHexString:color alpha:1.0];
}
@end
