#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

%hook AVPlayerLayer
- (void)setVideoGravity:(AVLayerVideoGravity)newGravity {
    %orig(AVLayerVideoGravityResizeAspectFill);
}
%end