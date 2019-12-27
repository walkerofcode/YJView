//
//  ViewController.m
//  YJView
//
//  Created by apple on 2019/12/27.
//  Copyright © 2019 Alen. All rights reserved.
//

#import "ViewController.h"
#import "YJView.h"

@interface ViewController ()
@property (nonatomic, weak) YJView* yjView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    YJView* yjView = [[YJView alloc] initWithFrame:self.view.bounds configuration:nil];
    NSURL* url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [yjView loadRequest:request];
    self.yjView = yjView;
    
    [self.view addSubview:yjView];
}


@end
