//
//  TGcdBlockViewController.m
//  FuckADMS
//
//  Created by liu zhuzhai on 2018/3/14.
//  Copyright © 2018年 liu zhuzhai. All rights reserved.
//

#import "TGcdBlockViewController.h"

@interface TGcdBlockViewController ()

@end

@implementation TGcdBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillDisappear:(BOOL)animated
{
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{

        NSLog(@"selfq:%p",self);
        sleep(3);
        dispatch_async( dispatch_get_main_queue(), ^{
            NSLog(@"self:%p",self);
            [self touchUpInside:nil];
            
        });
    }
    );
}

- (void)dealloc {
    NSLog(@"dealloc");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchUpInside:(id)sender {
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
