#import <AudioToolbox/AudioServices.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioUtil : NSObject

@property (strong, nonatomic)  AVAudioPlayer * audioPlayer;
@property float volume;
@property int numberOfLoops;

- (void) pause;
- (void) play;

- (void)playSound:(NSString *)fName :(NSString *)ext;

@end