#import "TPDAppDelegate.h"
#import "SSYProcessTyper.h"

@implementation TPDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"transformInAdfl"]) {
        /*SSYDBL*/ NSLog(@"Transforming in %s", __PRETTY_FUNCTION__) ;
        [SSYProcessTyper transformToForeground:nil] ;
    }
}

- (id)init {
    self = [super init] ;
    if (self) {
        if ([[NSUserDefaults standardUserDefaults] boolForKey:@"transformInInit"]) {
            /*SSYDBL*/ NSLog(@"Transforming in %s", __PRETTY_FUNCTION__) ;
            [SSYProcessTyper transformToForeground:nil] ;
        }
    }
    return self ;
}



@end
