ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyTVFullScreen
MyTVFullScreen_FILES = Tweak.xm
MyTVFullScreen_FRAMEWORKS = UIKit AVFoundation

include $(THEOS)/makefiles/tweak.mk