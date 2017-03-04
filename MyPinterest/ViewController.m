//
//  ViewController.m
//  MyPinterest
//
//  Created by Felicia Weathers on 2/26/17.
//  Copyright © 2017 Felicia Weathers. All rights reserved.
//

#import "ViewController.h"
#import "PDKClient.h"


@interface ViewController ()

@property (nonatomic, strong) PDKUser *user;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[PDKClient sharedInstance] authenticateWithPermissions:[NSArray arrayWithObjects:PDKClientReadPublicPermissions, nil] withSuccess:^(PDKResponseObject *responseObject) {
        
        NSLog(@"Response Object:%@",responseObject);
        
    } andFailure:^(NSError *error) {
        
        NSLog(@"Error:%@",error);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
