//
//  ViewController.m
//  Example
//
//  Created by Evan Xie on 2019/5/14.
//

#import "ViewController.h"
#import <LFLiveKit/LFLiveKit.h>

@interface ViewController ()
@property (nonatomic, strong) LFLiveSession *session;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LFLiveStreamInfo *info = [[LFLiveStreamInfo alloc] init];
    info.url = @"rtmps://live-360.facebook.com:443/rtmp/2032476200387142?s_bl=1&s_l=1&s_sw=0&s_vt=360&a=Aby3BpB9KWUdQR9y";
    
    self.session = [[LFLiveSession alloc] initWithAudioConfiguration:[LFLiveAudioConfiguration defaultConfiguration] videoConfiguration: [LFLiveVideoConfiguration defaultConfiguration]];
    [self.session startLive:info];
}


@end
