//
//  PromptView.m
//  TalkingPet
//
//  Created by Tolecen on 15/2/11.
//  Copyright (c) 2015年 Tolecen. All rights reserved.
//

#import "PromptView.h"

@implementation PromptView
-(id)initWithFrame:(CGRect)frame image:(UIImage *)image arrowDirection:(int)direction
{
    //Arrow direction, top left bottom right, 1 2 3 4;
    
    if (self = [super init]) {
        if (direction==3) {
            [self setFrame:frame];
        }
        else if (direction==2){
            [self setFrame:frame];
        }
        else if (direction==1){
            [self setFrame:frame];
        }
        else if (direction==4){
            [self setFrame:frame];
        }
        
        theDirection = direction;
        originRect = self.frame;
        self.promptView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self.promptView setImage:image];
        [self addSubview:self.promptView];
        self.alpha = 0;
        
    }
    return self;
}
-(void)show
{
    __weak UIView * weakSelf = self;
    [UIView animateWithDuration:0.3 animations:^{
        weakSelf.alpha = 1;
    } completion:^(BOOL finished) {
        [weakSelf performSelector:@selector(first) withObject:nil afterDelay:1];
    }];
    
}
-(void)first
{
    __weak id weakSelf = self;
    if (theDirection==4) {
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x+10, originRect.origin.y, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x+10, originRect.origin.y, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(second) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
    else if (theDirection==3) {
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y+10, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y+10, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(second) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
    else if (theDirection==2){
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x-10, originRect.origin.y, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x-10, originRect.origin.y, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(second) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
    else if (theDirection==1){
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y-10, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y-10, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(second) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
}
-(void)second
{
    __weak id weakSelf = self;
    if (theDirection==4) {
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x+10, originRect.origin.y, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x+10, originRect.origin.y, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(hideIt) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
    else if (theDirection==3) {
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y+10, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y+10, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(hideIt) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
    else if (theDirection==2){
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x-10, originRect.origin.y, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x-10, originRect.origin.y, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(hideIt) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
    else if (theDirection==1){
        [UIView animateWithDuration:0.3 animations:^{
            [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y-10, originRect.size.width, originRect.size.height)];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.3 animations:^{
                    [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y-10, originRect.size.width, originRect.size.height)];
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.4 animations:^{
                        [weakSelf setFrame:CGRectMake(originRect.origin.x, originRect.origin.y, originRect.size.width, originRect.size.height)];
                    } completion:^(BOOL finished) {
                        [weakSelf performSelector:@selector(hideIt) withObject:nil afterDelay:1];
                    }];
                }];
            }];
        }];
    }
}

-(void)hideIt
{
    __weak UIView * weakSelf = self;
    [UIView animateWithDuration:0.3 animations:^{
        weakSelf.alpha = 0;
    } completion:^(BOOL finished) {
        [weakSelf removeFromSuperview];
    }];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
