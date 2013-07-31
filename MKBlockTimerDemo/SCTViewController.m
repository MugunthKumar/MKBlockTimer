//
//  SCTViewController.m
//  MKBlockTimerDemo
//
//  Created by Mugunth on 4/4/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#import "SCTViewController.h"

#import "NSObject+MKBlockTimer.h"

@interface SCTViewController ()

@end

@implementation SCTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated {
    
    [self logTimeTakenToRunBlock:^{
        
        for(int i = 0 ; i < 1000000000; i ++);
    } withPrefix:@"For Loop"];
    
    [self logCPUTimeTakenToRunBlock:^{
        
        for(int i = 0 ; i < 1000000000; i ++);
        
        sleep(3);//sleep no take cpu time
        
    } withPrefix:@"For Loop CPU"];
    
    [super viewDidAppear:animated];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
