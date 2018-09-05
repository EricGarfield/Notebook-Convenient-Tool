//
//  EMAboutUsViewController.m
//  emark
//
//  Created by neebel on 2017/5/29.
//  Copyright © 2017年 neebel. All rights reserved.
//

#import "EMAboutUsViewController.h"
#import "EMDeviceUtil.h"

@interface EMAboutUsViewController ()

@property (nonatomic, strong) UILabel     *appInfoLabel;
@property (nonatomic, strong) UILabel     *introduceLabel;
@property (nonatomic, strong) UIImageView *iconImageView;
@end

@implementation EMAboutUsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"关于我们", nil);
    self.view.backgroundColor = [EMTheme currentTheme].mainBGColor;
    
    [self.view addSubview:self.iconImageView];
    __weak typeof(self) weakSelf = self;
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(60);
        make.centerX.equalTo(weakSelf.view);
        make.top.equalTo(weakSelf.view).with.offset(30);
    }];
    
    
    [self.view addSubview:self.introduceLabel];
    [self.introduceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(weakSelf.view);
        make.height.mas_equalTo(40);
        make.top.equalTo(weakSelf.view).with.offset(100);
    }];
    
    [self.view addSubview:self.appInfoLabel];
    [self.appInfoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(weakSelf.view);
        make.height.mas_equalTo(40);
        make.top.equalTo(weakSelf.view).with.offset(130);
    }];
}


- (UILabel *)appInfoLabel
{
    if (!_appInfoLabel) {
        _appInfoLabel = [[UILabel alloc] init];
//        NSString *appInfo = [NSString stringWithFormat:@"%@  Version %@ (%@)", [EMDeviceUtil sharedDevice].appName, [EMDeviceUtil sharedDevice].appVersion, [EMDeviceUtil sharedDevice].appBuildVersion];
        NSString *appInfo = @"Version 1.0.0";
        _appInfoLabel.text = appInfo;
        _appInfoLabel.textColor = UIColorFromHexRGB(0x333333);
        _appInfoLabel.font = [UIFont systemFontOfSize:13.0];
        _appInfoLabel.textAlignment = NSTextAlignmentCenter;
    }

    return _appInfoLabel;
}


- (UILabel *)introduceLabel
{
    if (!_introduceLabel) {
        _introduceLabel = [[UILabel alloc] init];
        _introduceLabel.text = NSLocalizedString(@"让记录更简单", nil);
        _introduceLabel.textColor = UIColorFromHexRGB(0x333333);
        _introduceLabel.font = [UIFont systemFontOfSize:15.0];
        _introduceLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _introduceLabel;
}


- (UIImageView *)iconImageView
{
    
    UIButton * rightBtn1 = [[UIButton alloc]initWithFrame:CGRectMake(68, 5, 60, 30)];
    [rightBtn1 setTitle:@"YY" forState:UIControlStateNormal];
    [rightBtn1 setTitleColor:[UIColor colorWithRed:0/255.0 green:122/255.0 blue:252/255.0 alpha:1] forState:UIControlStateNormal];
    rightBtn1.titleLabel.font = [UIFont systemFontOfSize:16];
    rightBtn1.titleLabel.textColor = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:252/255.0 alpha:1];
    
    
    
    UIImageView * logoV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lobout.png"]];
    logoV.center = CGPointMake(99, 0.21);
    logoV.bounds = CGRectMake(0, 0, 120, 120);
    logoV.layer.cornerRadius = 25;
    logoV.layer.masksToBounds = YES;
    
    
    
    UILabel * name = [[UILabel alloc]init];
    name.center = CGPointMake(5, 66);
    name.bounds = CGRectMake(0, 0, 130, 120);
    name.textAlignment = NSTextAlignmentCenter;
    name.font = [UIFont boldSystemFontOfSize:20];
    
    
    
    
    UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    sw.on = YES;
    sw.layer.cornerRadius = 10;
    sw.layer.masksToBounds = YES;
    
    UIView *gV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    gV.backgroundColor = [UIColor greenColor];
    gV.layer.cornerRadius = 10;
    gV.layer.masksToBounds = YES;

    
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.contentMode = UIViewContentModeScaleAspectFit;
        _iconImageView.image = [EMDeviceUtil sharedDevice].appIcon;
        _iconImageView.layer.cornerRadius = 5.0;
        _iconImageView.clipsToBounds = YES;
        
    }

    return _iconImageView;
}

@end
