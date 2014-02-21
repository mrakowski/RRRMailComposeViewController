//
//  RRRMailComposeViewController.m
//  MailSample
//
//  Created by Michael Rakowski on 2/3/13.
//  Copyright (c) 2013 Michael Rakowski. All rights reserved.
//

#import "RRRMailComposeViewController.h"

@interface RRRMailComposeViewController ()
@end

@implementation RRRMailComposeViewController

- (id)init
{
    self = [super init];
    if (self)
	{
        self.mailComposeDelegate = self;
    }
    return self;
}

#pragma mark - MFMailComposeViewControllerDelegate

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{   
    if (self.finishBlock != nil)
    {
        _finishBlock(result);
    }
}

#pragma mark - Legacy support

+(void)launchMailAppOnDevice
{
    NSString *recipients = @"";
    NSString *body = @"";
	
    NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
    email = [email stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
}

@end
