//
//  HXBBViewController.m
//  Hxbb_Autograph
//
//  Created by 690858187@qq.com on 06/17/2020.
//  Copyright (c) 2020 690858187@qq.com. All rights reserved.
//

#import "HXBBViewController.h"
#import "PaintingView.h"

@interface HXBBViewController ()

@end

@implementation HXBBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    PaintingView *paintView = [[PaintingView alloc] initWithFrame:self.view.bounds];
    paintView.backgroundColor = [UIColor whiteColor];
    [paintView setBrushColorWithRed:0.0 green:0.0 blue:0.0];
    [self.view addSubview:paintView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
