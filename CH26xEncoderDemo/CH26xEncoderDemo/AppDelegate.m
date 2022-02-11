//
//  AppDelegate.m
//  CH26xEncoderDemo
//
//  Created by chaichengxun on 2022/2/11.
//

#import "AppDelegate.h"
#import "PreviewVideoView.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *btn;
@property (weak) IBOutlet PreviewVideoView *videoView;
@property (assign) BOOL isPlaying;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _capture = [[VideoCapturer alloc] initWithDelegate:self];
    _isPlaying = false;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (void)videoCapturer:(VideoCapturer *)capturer didStartWithStatus:(int)status {
    
}
- (void)videoCapturer:(VideoCapturer *)capturer didReceivePixelBuffer:(CVPixelBufferRef)pixelBuffer {
    [self.videoView setSession:self.capture.session];
}
- (void)videoCapturer:(VideoCapturer *)capturer didStopWithStatus:(int)status {
    
}
- (void)videoCapturer:(VideoCapturer *)capturer didReceiveSampleBuffer:(CMSampleBufferRef)sampleBuffer {
    
}
- (IBAction)onClick:(id)sender {
    _isPlaying = !_isPlaying;
    if(_isPlaying) {
        [_capture start];
        [_btn setTitle:@"Stop"];
    } else {
        [_capture stop];
        [_btn setTitle:@"Start"];
    }
}

@end
