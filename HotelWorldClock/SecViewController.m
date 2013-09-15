//
//  SecViewController.m
//  HotelWorldClock
//
//  Created by stephen.wang on 13-9-14.
//  Copyright (c) 2013年 self-expressive code. All rights reserved.
//

#import "SecViewController.h"

#import "TimeServer.h"
#import "City.h"

@interface SecViewController ()

@end

@implementation SecViewController

@synthesize beijing = _beijing;
@synthesize london = _london;
//@synthesize newYork = _newYork;
@synthesize sydney = _sydney;
@synthesize moscow = _moscow;
@synthesize tokyo = _tokyo;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TimeServer* timeServer = [TimeServer getInstance];
    
    _beijing = [[City alloc]initWithName:@"Beijing" andTimeZone:8];
    _london = [[City alloc]initWithName:@"London" andTimeZone:0];
//    _newYork = [[City alloc]initWithName:@"NewYork" andTimeZone:-5];
    _sydney = [[City alloc]initWithName:@"Sydney" andTimeZone:10];
    _moscow = [[City alloc]initWithName:@"Moscow" andTimeZone:4];
    _tokyo = [[City alloc]initWithName:@"Tokyo" andTimeZone:9];
    
    [timeServer addCity:_beijing];
    [timeServer addCity:_london];
    [timeServer addCity:_sydney];
    [timeServer addCity:_moscow];
    [timeServer addCity:_tokyo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)notifyAll:(id)sender {
    TimeServer* timeServer = [TimeServer getInstance];
    [timeServer adjustTime:[NSDate date]];
    [timeServer notify];
}

- (IBAction)notifyCity:(id)sender {
}

@end
