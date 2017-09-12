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
/////////////////////////////////////////代码里添加规定注释的格式才有效，以下4种中任何一个都可以／／／／／／／／／／／／／／／／／／／／／／
//command + option +／
//出现:
/**
    <#Description#>
    
    @param BOOL <#BOOL description#>
    @return <#return value description#>
    */

/**
 *     @brief  构造方法
 *
 *     @param frame   位置宽高
 *     @param imgName
 *
 */

/**
 *  didFinishLaunchingWithOptions
 */

/**
 默认的全部都是详细描述。
 不写brief
 @discussion 这是这个方法的详细描述
 详细信息的描述。如果不写我，那我我和简介描述一样
 @param para1 参数1，这个参数XXXX
 @param para2 参数2 这个参数XXXX
 @return 返回值为id类型
 @warning 这是一个警告
 @see AppDelegate
 @since iOS9.0有效
 */
/////////////////////////////////////////代码里添加规定注释的格式才有效／／／／／／／／／／／／／／／／／／／／／／


#import "ViewController.h"
#import "UIColor+Extension.h"
#import "SXTTextField.h"

static NSUInteger kMargin = 20;
#define kTextFieldWidth [UIScreen mainScreen].bounds.size.width - 2*kMargin

@interface ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) SXTTextField *userNameTextField, *passwordTextField;
@property (strong, nonatomic) UIButton *loginBtn;

@end

@implementation ViewController


/**
 懒加载

 @return SXTTextField
 */
- (SXTTextField *)userNameTextField
{
    if (!_userNameTextField) {
        _userNameTextField = [[SXTTextField alloc] initWithFrame:CGRectMake(kMargin, 80, kTextFieldWidth, 44)];
        _userNameTextField.delegate = self;
        _userNameTextField.leftImgName = @"userName";
        _userNameTextField.placeholder = @"请输入手机号";
        _userNameTextField.keyboardType = UIKeyboardTypeNumberPad;
    }
    return _userNameTextField;
}


/**
  懒加载 getter方法

 @return <#return value description#>
 */
- (SXTTextField *)passwordTextField
{
    if (!_passwordTextField) {
        CGRect frame = CGRectMake(kMargin, CGRectGetMaxY(_userNameTextField.frame) + 30, kTextFieldWidth, 44);
        _passwordTextField = [[SXTTextField alloc] initWithFrame:frame leftImgName:@"password"];
        _passwordTextField.delegate = self;
        // 密码模式
        _passwordTextField.secureTextEntry = YES;
        _passwordTextField.placeholder = @"请输入密码";
    }
    return _passwordTextField;
}


/**
  懒加载 getter方法

 @return <#return value description#>
 */
- (UIButton *)loginBtn
{
    if (!_loginBtn) {
        CGFloat pointY = CGRectGetMaxY(_passwordTextField.frame) + 50;
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _loginBtn.frame = CGRectMake(kMargin, pointY, kTextFieldWidth, 44);
        [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        _loginBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [_loginBtn setBackgroundImage:[UIImage imageNamed:@"beijing"] forState:UIControlStateNormal];
        [_loginBtn addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
        _loginBtn.layer.cornerRadius = 4.0f;
        _loginBtn.layer.masksToBounds = YES;
        _loginBtn.enabled = NO;
    }
    return _loginBtn;
}

#pragma mark -
#pragma mark loginAction

/**
 <#Description#>

 @param btn <#btn description#>
 */
- (void)loginAction:(UIButton *)btn
{
    NSLog(@"userName:%@ password:%@", _userNameTextField.text, _passwordTextField.text);
}

/**
 <#Description#>

 @param BOOL <#BOOL description#>
 @return <#return value description#>
 */
#pragma mark -
#pragma mark UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([_passwordTextField.text isEqualToString:@""] || [_userNameTextField.text isEqualToString:@""]) {
        _loginBtn.enabled = NO;
    }else{
        _loginBtn.enabled = YES;
    }
    
    return YES;
}


/**
 <#Description#>

 @param textField <#textField description#>
 @return <#return value description#>
 */


/**
 <#Description#>

 @param textField <#textField description#>
 @return <#return value description#>
 */
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    return YES;
}


/**
 lifecycle

 @return void
 */
#pragma mark -
#pragma mark lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHexString:@"#f7f8f3"];
    [self.view addSubview:self.userNameTextField];
    [self.view addSubview:self.passwordTextField];
    [self.view addSubview:self.loginBtn];

}


/**
 <#Description#>

 @param touches <#touches description#>
 @param event <#event description#>
 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

/**
 didReceiveMemoryWarning
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
