//
//  TimeServer.m
//  HotelWorldClock
//
//  Created by stephen.wang on 13-9-14.
//  Copyright (c) 2013年 self-expressive code. All rights reserved.
//

#include <stdio.h>
#import "City.h"
#import "TimeServer.h"

@implementation TimeServer

@synthesize cities = _cities;
@synthesize time = _time;

TimeServer * _instance;

-(id)init{
    if (self = [super init]) {
        _cities = [NSMutableArray arrayWithObjects: nil];
    }
    return self;
}

-(void)notify {
    for(City* city in _cities)
    {
        [city update:_time];
    }
}

-(void)adjustTime:(NSDate *)updatedTime {
    _time = updatedTime;
}

-(void)addCity:(City *)city {
    [_cities addObject:city];
}

+ (TimeServer*)getInstance{
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [[TimeServer alloc]init];
        }
        return _instance;
    }
}
@end