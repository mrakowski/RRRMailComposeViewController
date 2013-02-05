RRRMailComposeViewController
============================

A subclass of MFMailComposeViewController with a finish block.

RRRMailComposeViewController implements the MFMailComposeViewControllerDelegate protcol so it receive the  mailComposeController:didFinishWithResult:error: call and pass the results into the finish block.