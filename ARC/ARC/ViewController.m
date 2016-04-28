//
//  ViewController.m
//  ARC
//
//  Created by Mac on 16/4/27.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    NSArray *_array;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray* array = [[NSArray alloc]initWithObjects:@"1", nil];
    _array=array;

   // [array release];
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame= CGRectMake(1, 100, 100, 100);
    btn.backgroundColor=[UIColor yellowColor];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [array release];
}
-(void)btn{
    NSLog(@"%@",_array);


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
