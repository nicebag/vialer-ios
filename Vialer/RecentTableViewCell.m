//
//  RecentTableViewCell.m
//  Copyright © 2015 VoIPGRID. All rights reserved.
//

#import "RecentTableViewCell.h"

#import "NSDate+RelativeDate.h"

#import <QuartzCore/QuartzCore.h>

static NSString * const RecentTableViewCellOutboundImageName = @"outbound";

@interface RecentTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateTimeLabel;

@end

@implementation RecentTableViewCell

#pragma mark - properties

- (void)setInbound:(BOOL)inbound {
    if (inbound) {
        self.iconImageView.image = nil;
    } else {
        self.iconImageView.image = [UIImage imageNamed:RecentTableViewCellOutboundImageName];
    }
}

- (NSString *)name {
    return self.nameLabel.text;
}

- (void)setName:(NSString *)name {
    self.nameLabel.text = name;
}

- (void)setSubtitle:(NSString *)subtitle {
    self.subtitleLabel.text = subtitle;
}

- (void)setDate:(NSDate *)date {
    self.dateTimeLabel.text = [date relativeDayTimeString];
}

- (void)setAnswered:(BOOL)answered {
    if (answered) {
        self.nameLabel.textColor = [UIColor blackColor];
    } else {
        self.nameLabel.textColor = [UIColor redColor];
    }
}

@end
