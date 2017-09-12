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

#import "SXTTextField.h"

@interface SXTTextField ()

@property (strong, nonatomic) UIImageView *leftImageView;

@end

@implementation SXTTextField

/**
 <#Description#>

 @param instancetype <#instancetype description#>
 @return <#return value description#>
 */
#pragma mark -
#pragma mark lifecycle
- (instancetype)initWithFrame:(CGRect)frame
                  leftImgName:(NSString *)leftImgName
{
    self.leftImgName = leftImgName;
    
    return [self initWithFrame:frame];
}


/**
 <#Description#>

 @param frame <#frame description#>
 @return <#return value description#>
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 设置xx
        self.clearButtonMode = UITextFieldViewModeAlways;
        // 第二次输入清除内容
        self.clearsOnBeginEditing = YES;
        
        // return模式
        self.returnKeyType = UIReturnKeyDone;
        
        // 设置背景图片
//        self.backgroundColor = [UIColor redColor];
        self.background = [UIImage imageNamed:@"background"];
        
        // 设置左边view
        self.leftView = self.leftImageView;
        // 设置左边view一直存在
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    return self;
}

/**
 <#Description#>

 @param UIImageView <#UIImageView description#>
 @return <#return value description#>
 */
#pragma mark -
#pragma mark init methods
- (UIImageView *)leftImageView
{
    if (!_leftImageView) {
        _leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 4, 45, 36)];
        _leftImageView.backgroundColor = [UIColor clearColor];
        _leftImageView.contentMode = UIViewContentModeCenter;
    }
    return _leftImageView;
}

/**
 <#Description#>

 @return void
 */
#pragma mark -
#pragma mark set
- (void)setLeftImgName:(NSString *)leftImgName
{
    _leftImgName = leftImgName;
    
    // 把图片展示在leftView上面
    self.leftImageView.image = [UIImage imageNamed:leftImgName];
}

@end
