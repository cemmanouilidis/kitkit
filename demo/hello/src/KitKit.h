#import <Foundation/Foundation.h>

@interface KitKit : NSObject
{
    // declaration of NSString * creator not neccessary
}

// make use of ARC keyword strong
@property (nonatomic, strong) NSString * creator;

-(void)print;

@end
