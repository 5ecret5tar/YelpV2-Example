//
//  ViewController.m
//  YelpV2-API
//
//  Created by Pawel Gieniec on 9/22/14.
//  Copyright (c) 2014 Pawel Gieniec. All rights reserved.
//

#import "ViewController.h"
#import <YelpV2/YelpV2.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CLLocation * location = [[CLLocation alloc] initWithLatitude:37.77493 longitude:-122.419416];
    
    [[YelpV2 sharedInstance] search:@"food" withCLLocation:location.coordinate withCompletionBlock:^(id response) {
        NSLog(@"%@", response);
    } withErrorBlock:^(NSError *error) {
        NSLog(@"%@", error.localizedDescription);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
