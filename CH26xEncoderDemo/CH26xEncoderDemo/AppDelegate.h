//
//  AppDelegate.h
//  CH26xEncoderDemo
//
//  Created by chaichengxun on 2022/2/11.
//

#import <Cocoa/Cocoa.h>
#import "VideoCapturer.h"

@interface AppDelegate : NSObject <NSApplicationDelegate,VideoCapturerDelegate>

@property (nonatomic, retain) VideoCapturer* capture;

@end

