.class public Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mCallbacks:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callbacks"    # Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 106
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSlop:I

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    const/high16 v2, 0x10e0000

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mAnimationTime:J

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 112
    iput-object p2, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 113
    iput-object p3, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mCallbacks:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;

    .line 104
    return-void
.end method

.method private performDismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 270
    iget-object v3, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 271
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 273
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 275
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;-><init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    new-instance v3, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;-><init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 265
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 255
    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 256
    iget-wide v2, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mAnimationTime:J

    .line 253
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$2;-><init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 252
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 122
    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 124
    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 125
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    .line 128
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 245
    :cond_1
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 131
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownX:F

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownY:F

    .line 133
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mCallbacks:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 134
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 135
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 137
    :cond_2
    const/4 v8, 0x1

    return v8

    .line 141
    :pswitch_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownX:F

    sub-float v3, v8, v9

    .line 146
    .local v3, "deltaX":F
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 147
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 148
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 149
    .local v7, "velocityX":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 150
    .local v0, "absVelocityX":F
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 151
    .local v1, "absVelocityY":F
    const/4 v5, 0x0

    .line 152
    .local v5, "dismiss":Z
    const/4 v6, 0x0

    .line 153
    .local v6, "dismissRight":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    iget-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v8, :cond_6

    .line 154
    const/4 v5, 0x1

    .line 155
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    const/4 v6, 0x1

    .line 162
    :cond_3
    :goto_1
    if-eqz v5, :cond_c

    .line 164
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 165
    if-eqz v6, :cond_b

    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    :goto_2
    int-to-float v8, v8

    .line 164
    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 166
    const/4 v9, 0x0

    .line 164
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 167
    iget-wide v10, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mAnimationTime:J

    .line 164
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 168
    new-instance v9, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$1;

    invoke-direct {v9, p0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$1;-><init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)V

    .line 164
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 182
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 183
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 184
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mTranslationX:F

    .line 185
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownX:F

    .line 186
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownY:F

    .line 187
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 155
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 156
    :cond_6
    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v8, v0

    if-gtz v8, :cond_3

    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_3

    .line 157
    cmpg-float v8, v1, v0

    if-gez v8, :cond_3

    iget-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    .line 156
    if-eqz v8, :cond_3

    .line 159
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_7

    const/4 v8, 0x1

    move v9, v8

    :goto_4
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_8

    const/4 v8, 0x1

    :goto_5
    if-ne v9, v8, :cond_9

    const/4 v5, 0x1

    .line 160
    :goto_6
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    const/4 v6, 0x1

    goto :goto_1

    .line 159
    :cond_7
    const/4 v8, 0x0

    move v9, v8

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    .line 160
    :cond_a
    const/4 v6, 0x0

    goto :goto_1

    .line 165
    :cond_b
    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    neg-int v8, v8

    goto :goto_2

    .line 174
    :cond_c
    iget-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v8, :cond_4

    .line 176
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 177
    const/4 v9, 0x0

    .line 176
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 178
    const/high16 v9, 0x3f800000    # 1.0f

    .line 176
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 179
    iget-wide v10, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mAnimationTime:J

    .line 176
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 180
    const/4 v9, 0x0

    .line 176
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 192
    .end local v0    # "absVelocityX":F
    .end local v1    # "absVelocityY":F
    .end local v3    # "deltaX":F
    .end local v5    # "dismiss":Z
    .end local v6    # "dismissRight":Z
    .end local v7    # "velocityX":F
    :pswitch_2
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 196
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 197
    const/4 v9, 0x0

    .line 196
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 198
    const/high16 v9, 0x3f800000    # 1.0f

    .line 196
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 199
    iget-wide v10, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mAnimationTime:J

    .line 196
    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 200
    const/4 v9, 0x0

    .line 196
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 201
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 202
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 203
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mTranslationX:F

    .line 204
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownX:F

    .line 205
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownY:F

    .line 206
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 211
    :pswitch_3
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 215
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownX:F

    sub-float v3, v8, v9

    .line 217
    .restart local v3    # "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mDownY:F

    sub-float v4, v8, v9

    .line 218
    .local v4, "deltaY":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    .line 219
    iget-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    if-nez v8, :cond_d

    .line 220
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_f

    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSlop:I

    :goto_7
    iput v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 222
    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    .line 223
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 228
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    .line 227
    or-int/lit8 v8, v8, 0x3

    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 230
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 231
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_e
    iget-boolean v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v8, :cond_1

    .line 235
    iput v3, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mTranslationX:F

    .line 236
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    iget v9, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    iget-object v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 239
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    .line 238
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 240
    const/4 v8, 0x1

    return v8

    .line 220
    :cond_f
    iget v8, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->mSlop:I

    neg-int v8, v8

    goto :goto_7

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
