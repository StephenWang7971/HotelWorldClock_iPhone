//
//  City.h
//  HotelWorldClock
//
//  Created by stephen.wang on 13-9-14.
//  Copyright (c) 2013年 self-expressive code. All rights reserved.
//

#ifndef HotelWorldClock_City_h
#define HotelWorldClock_City_h

@interface City : NSObject

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSDate* time;
@property (nonatomic) int utcTimeZone;


-(id)initWithName:(NSString*)cityName andTimeZone:(int)timeZone;
-(void)update:(NSDate*)updatedUtcTime;
-(NSString*)description;

@end

#endif
