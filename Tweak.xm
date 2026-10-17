#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

// هذا الكود يجبر أي فيديو يفتح في التطبيق إنه يتمدد ويملأ الشاشة (Aspect Fill)
%hook AVPlayerLayer
- (void)setVideoGravity:(AVLayerVideoGravity)newGravity {
    %orig(AVLayerVideoGravityResizeAspectFill);
}
%end

// وهذا الكود يجبر شاشة الفيديو تفتح Full Screen (بدون شكل البطاقة)
%hook UIViewController
- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion {
    viewControllerToPresent.modalPresentationStyle = UIModalPresentationFullScreen;
    %orig;
}
%end