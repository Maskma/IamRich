
#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBInspectable UILabel *iamRich;
@property (weak, nonatomic) IBInspectable UIImageView *ruby;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.ruby.alpha = 0;
    self.iamRich.alpha = 0;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:3 animations:^{
        self.ruby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            self.iamRich.center = CGPointMake(self.view.center.x, self.view.center.y + 140);
            self.iamRich.alpha = 1;
        } completion:nil];
    }];
    
}


@end
