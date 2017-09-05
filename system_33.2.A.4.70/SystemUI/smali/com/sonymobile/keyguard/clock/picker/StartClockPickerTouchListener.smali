.class public Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;
.super Ljava/lang/Object;
.source "StartClockPickerTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;
    }
.end annotation


# instance fields
.field private mActiveTouch:Z

.field private final mClockPickerStarter:Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

.field private final mContext:Landroid/content/Context;

.field private mDidHandleClick:Z

.field private final mDismissTouchDistancePX:F

.field private final mHandler:Landroid/os/Handler;

.field private final mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

.field private mStartTouchX:F

.field private mStartTouchY:F


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->startPicker(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;)V
    .locals 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "clockPickerStarter"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    .line 60
    iput v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    .line 66
    iput-boolean v4, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    .line 72
    iput-boolean v4, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    .line 88
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mClockPickerStarter:Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

    .line 90
    new-instance v2, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    invoke-direct {v2, p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;-><init>(Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;)V

    iput-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    .line 91
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mHandler:Landroid/os/Handler;

    .line 93
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 96
    .local v0, "density":F
    mul-float v2, v3, v0

    iput v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    .line 87
    .end local v0    # "density":F
    :goto_0
    return-void

    .line 98
    :cond_0
    iput v3, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 158
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iput v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    .line 160
    iput v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    .line 161
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    .line 162
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    .line 157
    return-void
.end method

.method private start(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    .line 148
    return-void
.end method

.method private startPicker(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 172
    iput-boolean v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    .line 173
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->somc_keyguard_use_default_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 177
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mClockPickerStarter:Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;->displayClockPluginPicker()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mActiveTouch:Z

    return v2

    .line 109
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->start(Landroid/view/MotionEvent;)V

    .line 112
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    invoke-virtual {v2, p1}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;->setView(Landroid/view/View;)V

    .line 113
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mLongPressCompletedRunnable:Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener$LongPressCompletedRunnable;

    .line 114
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 113
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :pswitch_1
    iget v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 118
    iget v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 119
    .local v0, "deltaX":F
    iget v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mStartTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 120
    .local v1, "deltaY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    .line 121
    iget v4, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDismissTouchDistancePX:F

    .line 120
    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    goto :goto_0

    .line 127
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :pswitch_2
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->mDidHandleClick:Z

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;->reset()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
