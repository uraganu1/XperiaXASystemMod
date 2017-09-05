.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarViewTaskSwitchHelper.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mMinFlingVelocity:I

.field private final mScrollTouchSlop:I

.field private final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 41
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    .line 44
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    .line 39
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 95
    .local v0, "absVelX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 96
    .local v1, "absVelY":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 97
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    .line 96
    if-eqz v4, :cond_2

    .line 97
    cmpl-float v4, v1, v0

    if-lez v4, :cond_1

    :goto_0
    const/4 v2, 0x1

    .line 98
    .local v2, "isValidFling":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 100
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsRTL:Z

    if-nez v4, :cond_5

    .line 101
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-eqz v4, :cond_4

    cmpg-float v4, p4, v5

    if-gez v4, :cond_3

    :goto_2
    const/4 v3, 0x1

    .line 106
    .local v3, "showNext":Z
    :goto_3
    if-eqz v3, :cond_8

    .line 107
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->showNextAffiliatedTask()V

    .line 112
    .end local v3    # "showNext":Z
    :cond_0
    :goto_4
    const/4 v4, 0x1

    return v4

    .line 97
    .end local v2    # "isValidFling":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isValidFling":Z
    goto :goto_1

    .end local v2    # "isValidFling":Z
    :cond_2
    cmpl-float v4, v0, v1

    if-lez v4, :cond_1

    goto :goto_0

    .line 101
    .restart local v2    # "isValidFling":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "showNext":Z
    goto :goto_3

    .end local v3    # "showNext":Z
    :cond_4
    cmpg-float v4, p3, v5

    if-gez v4, :cond_3

    goto :goto_2

    .line 104
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-eqz v4, :cond_7

    cmpg-float v4, p4, v5

    if-gez v4, :cond_6

    :goto_5
    const/4 v3, 0x1

    .restart local v3    # "showNext":Z
    goto :goto_3

    .end local v3    # "showNext":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "showNext":Z
    goto :goto_3

    .end local v3    # "showNext":Z
    :cond_7
    cmpl-float v4, p3, v5

    if-lez v4, :cond_6

    goto :goto_5

    .line 109
    .restart local v3    # "showNext":Z
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->showPreviousAffiliatedTask()V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, "action":I
    const/4 v2, 0x0

    .line 62
    .local v2, "intercepted":Z
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 64
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 70
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 71
    .local v5, "y":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 72
    .local v4, "xDiff":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 73
    .local v6, "yDiff":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-nez v7, :cond_2

    .line 74
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v4, v7, :cond_1

    if-le v4, v6, :cond_1

    const/4 v1, 0x1

    .line 76
    .local v1, "exceededTouchSlop":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 77
    const/4 v7, 0x1

    return v7

    .line 74
    .end local v1    # "exceededTouchSlop":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "exceededTouchSlop":Z
    goto :goto_1

    .line 75
    .end local v1    # "exceededTouchSlop":Z
    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v6, v7, :cond_3

    if-le v6, v4, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "exceededTouchSlop":Z
    goto :goto_1

    .end local v1    # "exceededTouchSlop":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "exceededTouchSlop":Z
    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 47
    return-void
.end method

.method public setBarState(ZZ)V
    .locals 0
    .param p1, "isVertical"    # Z
    .param p2, "isRTL"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    .line 53
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsRTL:Z

    .line 51
    return-void
.end method
