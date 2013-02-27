#import <Foundation/Foundation.h>

#import "KitKit.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        /* use boxed expressions to transform (char *) into (NSString *) */
        NSString * app = @(argv[0]);

        KitKit * kitKit = [[KitKit alloc] init];

        NSLog(@"Hello KitKit World, this is main() in %@", app);
        
        [kitKit print];
        kitKit.creator = app; 
        [kitKit print];
    }

    return 0;
}
