#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    if (ratingArray.count <= 2 || ratingArray == nil) {
        return  0;
    }
    
    NSInteger n = ratingArray.count;
    NSInteger counter = 0;
    
    for (NSInteger i = 0; i < n - 2 ; i++) {
        for (NSInteger j = 1; j < n - 1 ; j++) {
            for (NSInteger k = 2; k < n ; k++) {
                
                
                if (([ratingArray[i] intValue] < [ratingArray[j] intValue ]) && ([ratingArray[j] intValue ] < [ratingArray[k] intValue ]))   {
                    
                    if ((0 <= i) && (i < j) && (j < k) && (k < n)) {
                        counter += 1;
                    }
                    
                } else if (([ratingArray[i] intValue] > [ratingArray[j] intValue ]) && ([ratingArray[j] intValue ] > [ratingArray[k] intValue ])) {
                    
                    if ((0 <= i) && (i < j) && (j < k) && (k < n)){
                        counter += 1;
                    }
                }
            }
        }
    }
    
    return counter;
}

@end
