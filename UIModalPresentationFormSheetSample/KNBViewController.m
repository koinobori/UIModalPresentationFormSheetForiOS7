#import "KNBViewController.h"

@interface KNBViewController ()

@end

@implementation KNBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushedButton:(id)sender {
    
    UIViewController* smallModalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"smallModalView"];
    
    smallModalViewController.modalPresentationStyle = UIModalPresentationFormSheet;
    
    [self presentViewController:smallModalViewController animated:YES completion:nil];
    
    
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        smallModalViewController.view.superview.frame = CGRectMake(0, 0, 300, 200);
        smallModalViewController.view.superview.center = CGPointMake(384, 512);
    }else{
        NSLog(@"%@",smallModalViewController.view.superview);
        CGRect superViewFrame = smallModalViewController.view.superview.frame;
        smallModalViewController.view.frame = CGRectMake(0, 0, 300, 200);
        smallModalViewController.view.center  = CGPointMake(superViewFrame.size.width/2, superViewFrame.size.height/2);
        smallModalViewController.view.superview.backgroundColor = [UIColor clearColor];
    }
    
    
}

- (IBAction)returnMainView:(UIStoryboardSegue*)segue
{
    
}

@end
