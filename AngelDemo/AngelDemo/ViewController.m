//
//  ViewController.m
//  AngelDemo
//
//  Created by Ugur Kirbac on 20/02/14.
//  Copyright (c) 2014 Ugur Kirbac. All rights reserved.
//

#import "ViewController.h"
#import "PairView.h"
@interface ViewController ()

@end

@implementation ViewController
#pragma mark - UIViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = NSLocalizedString(@"AngelApp Demo", nil);
    credentialsDictionary = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"password", @"1234", nil] forKeys:[NSArray arrayWithObjects:@"username",@"alex", nil]];
}

- (IBAction)enterCredentials
{
    if ([[credentialsDictionary objectForKey:usernameField.text]isEqualToString:passwordField.text]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"This password is correct." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        //[alert show];
        [self switchView:nil];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"This password is incorrect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)backgroundTouched
{
    [usernameField resignFirstResponder];
    [passwordField resignFirstResponder];
    
}

- (IBAction)switchView:(id)sender {
    PairView *pairview = [[PairView alloc]  initWithNibName:nil bundle:nil];
    [self presentViewController:pairview animated:YES completion:NULL];
}



@end