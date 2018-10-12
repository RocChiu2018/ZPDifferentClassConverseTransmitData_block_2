//
//  ZPTwoViewController.h
//  block回调2（异类之间的回调传值）
//
//  Created by apple on 16/7/5.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZPStudent;

//block函数的定义
typedef void (^TransferBlock) (ZPStudent *student);

@interface ZPTwoViewController : UIViewController

@property (nonatomic, copy) TransferBlock transferblock;

- (void)bridge:(TransferBlock) block;

@end
