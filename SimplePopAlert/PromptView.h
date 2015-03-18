//
//  PromptView.h
//  TalkingPet
//
//  Created by Tolecen on 15/2/11.
//  Copyright (c) 2015年 Tolecen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PromptView : UIView
{
    int theDirection;
    CGRect originRect;
}
@property (nonatomic,strong)UIImageView * promptView;
-(id)initWithFrame:(CGRect)frame image:(UIImage *)image arrowDirection:(int)direction;
-(void)show;


@end
