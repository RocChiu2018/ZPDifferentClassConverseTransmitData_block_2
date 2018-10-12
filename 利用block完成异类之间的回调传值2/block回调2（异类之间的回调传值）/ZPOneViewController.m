//
//  ZPOneViewController.m
//  block回调2（异类之间的回调传值）
//
//  Created by apple on 16/7/5.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPOneViewController.h"
#import "ZPTwoViewController.h"
#import "ZPStudent.h"

@interface ZPOneViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sexLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end

@implementation ZPOneViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark ————— segue方法 —————
/**
 不管是自动型的还是手动型的segue在页面跳转之前系统都会自动调用这个方法
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ZPTwoViewController *twoViewController = segue.destinationViewController;
    
    /**
     block函数的实现：
     通过block函数的回调，获取到从其他类逆传过来的数据（student对象）
     */
    [twoViewController bridge:^(ZPStudent *student) {
        self.nameLabel.text = student.name;
        self.sexLabel.text = student.sex;
        self.ageLabel.text = student.age;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
