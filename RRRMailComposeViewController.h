//
//  RRRMailComposeViewController.h
//  MailSample
//
//  Created by Michael Rakowski on 2/3/13.
//  Copyright (c) 2013 Michael Rakowski. All rights reserved.
//

#import <MessageUI/MessageUI.h>

typedef void (^RRRMailComposeViewControllerFinishBlockType)(MFMailComposeResult result);

@interface RRRMailComposeViewController : MFMailComposeViewController <MFMailComposeViewControllerDelegate>

@property (nonatomic, copy) RRRMailComposeViewControllerFinishBlockType finishBlock;

@end
