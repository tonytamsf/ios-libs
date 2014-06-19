#import "AudioUtil.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioServices.h>
#import "Debug.h"

@implementation AudioUtil

+(void)playSound:(NSString *)fName :(NSString *)ext
{
    NSString *path  = [[NSBundle mainBundle] pathForResource : fName ofType :ext];
    SystemSoundID audioEffect;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        DLog(@"playing %@", fName);
        NSError *err = [[NSError alloc] init];
        NSURL *pathURL = [NSURL fileURLWithPath:path];
        AVAudioPlayer *av = [[AVAudioPlayer alloc] initWithContentsOfURL:pathURL error:&err];
        // AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &audioEffect);
        // AudioServicesPlaySystemSound(audioEffect);
    }
    
    else{
        DLog(@"Error, file not found: %@",path);
    }
    
    
}

@end
