#import "KitKit.h"

@implementation KitKit

-(id)init
{
    if ((self = [super init]))
    {
        self.creator = @"Not available yet";
    }

    return self;
}

-(void)print
{
    NSLog(@"This is the class KitKit, created by: %@", self.creator);
}

@end
