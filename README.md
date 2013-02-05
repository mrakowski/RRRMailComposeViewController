RRRMailComposeViewController
============================

A subclass of MFMailComposeViewController with a finish block.

RRRMailComposeViewController implements the MFMailComposeViewControllerDelegate protocol so it will receive the  mailComposeController:didFinishWithResult:error: delegate call and pass the results into the finish block.