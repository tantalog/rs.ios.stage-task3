#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableString *firstString = [NSMutableString stringWithString:string1];
    NSMutableString *secondString = [NSMutableString stringWithString:string2];
    NSMutableString *result = [[NSMutableString alloc] init];
    
    while ((firstString.length != 0) && (secondString.length != 0)) {
        if ([firstString UTF8String] [0] <= [secondString UTF8String] [0]) {
            [result appendString: [firstString substringToIndex: 1]];
            firstString = [firstString substringFromIndex: 1];
        }
        else {
            [result appendString: [secondString substringToIndex: 1]];
            secondString = [secondString substringFromIndex: 1];
        }
    }
    
    if (firstString.length == 0) {
        [result appendString: secondString];
    }
    else {
        [result appendString: firstString];
    }
    return result;
}

@end
