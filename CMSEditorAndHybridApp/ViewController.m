//
//  ViewController.m
//  CMSEditorAndHybridApp
//
//  Created by Arkhitech on 10/14/14.
//  Copyright (c) 2014 Arkhitech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewWeb.delegate = self;
   

    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void) viewWillAppear:(BOOL)animated{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *fullURL = [defaults objectForKey:@"url"];
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_viewWeb loadRequest:requestObj];
    self.viewWeb.frame=self.view.bounds;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
