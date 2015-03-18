//
//  ViewController.m
//  SimplePopAlert
//
//  Created by Tolecen on 15/3/17.
//  Copyright (c) 2015年 Tolecen. All rights reserved.
//

#import "ViewController.h"
#import "PromptView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Arrow direction 1 2 3 4 means top left bottom right
     
    PromptView * prompt = [[PromptView alloc] initWithFrame:CGRectMake(100, self.view.frame.size.height-50, 80, 40) image:[UIImage imageNamed:@"bottomArrow_prompt"] arrowDirection:3];
    [self.view addSubview:prompt];
    [prompt show];
     
    
    
    /*****At Left
    
    PromptView * prompt = [[PromptView alloc] initWithFrame:CGRectMake(10, 100, 100, 35) image:[UIImage imageNamed:@"leftArrow_prompt"] arrowDirection:2];
    [self.view addSubview:prompt];
    [prompt show];
     
     **********/
    
    
    /******At Top
    
    PromptView * prompt = [[PromptView alloc] initWithFrame:CGRectMake(100, 40, 100, 50) image:[UIImage imageNamed:@"topArrow_prompt"] arrowDirection:1];
    [self.view addSubview:prompt];
    [prompt show];
     
     **********/
    
    /******At Right
     
    PromptView * prompt = [[PromptView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-100-10, 100, 100, 38) image:[UIImage imageNamed:@"rightArrow_prompt"] arrowDirection:4];
    [self.view addSubview:prompt];
    [prompt show];
     
     **********/
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
