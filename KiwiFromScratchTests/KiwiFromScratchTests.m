#import <Foundation/Foundation.h>
#import "Kiwi.h"

SPEC_BEGIN(NSArrayKVCAggregateFunctionSpec)

// Setting up the array to satisfy the condition
describe(@"sum", ^{
    __block NSArray *collection = nil;
    __block NSDictionary *person1 = nil, *person2 = nil;
    
    beforeEach(^{
        person1 = [NSDictionary dictionaryWithObject:
                   [NSNumber numberWithInt:15] forKey:@"age"];
        person2 = [NSDictionary dictionaryWithObject:
                   [NSNumber numberWithInt:5] forKey:@"age"];
        collection = [NSArray arrayWithObjects:person1, person2, nil];
    });
    
    it(@"adds up the key path", ^{
        NSNumber *sum = [collection valueForKeyPath:@"@sum.age"];
        [[sum should] equal:[NSNumber numberWithInt:20]];
    });
});

SPEC_END