//
//  City.m
//  HotelWorldClock
//
//  Created by stephen.wang on 13-9-14.
//  Copyright (c) 2013年 self-expressive code. All rights reserved.
//

#include <stdio.h>

#import "City.h"

@implementation City

@synthesize name = _name;
@synthesize time = _time;
@synthesize utcTimeZone = _utcTimeZone;

-(id)initWithName:(NSString *)cityName andTimeZone:(int)timeZone {
    if (self = [super init]) {
        _name = cityName;
        _utcTimeZone = timeZone;
    }
    return self;
}

-(void)update : (NSDate*) updatedTime {
    NSTimeZone* GTMzone = [NSTimeZone timeZoneForSecondsFromGMT: _utcTimeZone];
    NSDateFormatter * formatter =[[NSDateFormatter alloc]init];
    [formatter setTimeZone:GTMzone];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    
    _time = [NSDate dateWithTimeInterval:3600 * _utcTimeZone sinceDate:updatedTime];
    
    NSLog(@"update %@ %@", _name, [formatter stringFromDate:_time]);
    //NSLog(@"update %@ %@", _name, _time);
}

-(NSString*)description {
    return [NSString stringWithFormat:@"%@ is now at %@", _name, _time];
}

@end