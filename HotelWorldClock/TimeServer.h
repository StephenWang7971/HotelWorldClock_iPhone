//
//  TimeServer.h
//  HotelWorldClock
//
//  Created by stephen.wang on 13-9-14.
//  Copyright (c) 2013年 self-expressive code. All rights reserved.
//

#ifndef HotelWorldClock_TimeServer_h
#define HotelWorldClock_TimeServer_h

@interface TimeServer : NSObject 

@property (nonatomic, retain) NSMutableArray* cities;
@property (nonatomic, retain) NSDate* time;

-(void)notify;

-(void)adjustTime: (NSDate*)updatedTime;

-(void)addCity:(City*)city;

+(TimeServer *)getInstance;

@end


#endif
