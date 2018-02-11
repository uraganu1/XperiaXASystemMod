.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
.super Landroid/widget/FrameLayout;
.source "WfdSinkSurfaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdSinkLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;
    }
.end annotation


# instance fields
.field private mCatchEvents:Z

.field private mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

.field private mFocusGetCallback:Ljava/lang/Runnable;

.field private mFullScreenFlag:Z

.field private mHasFocus:Z

.field private mHasPerformedLongPress:Z

.field private mInitX:F

.field private mInitY:F

.field private mTouchSlop:I

.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V
    .locals 0
    .param p1, "catched"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setCatchEvents(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setFullScreenFlag(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setOnFocusGetCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 376
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .line 377
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 366
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    .line 372
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFullScreenFlag:Z

    .line 373
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z

    .line 378
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mTouchSlop:I

    .line 376
    return-void
.end method

.method private checkForLongClick(I)V
    .locals 4
    .param p1, "delayOffset"    # I

    .prologue
    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    .line 550
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->rememberWindowAttachCount()V

    .line 554
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    .line 555
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 554
    add-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    return-void
.end method

.method private getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 529
    .local v2, "pointerCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v0, "eventDesc":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 532
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    const-string/jumbo v5, ","

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 535
    const-string/jumbo v5, ","

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 537
    const-string/jumbo v5, ","

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private removePendingCallback()V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "removePendingCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 562
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-wrap2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    goto :goto_0
.end method

.method private sendUibcInputEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventDesc"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUibcInputEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkExt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->sendUibcEvent(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private setCatchEvents(Z)V
    .locals 0
    .param p1, "catched"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    .line 566
    return-void
.end method

.method private setFullScreenFlag(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFullScreenFlag:Z

    .line 570
    return-void
.end method

.method private setOnFocusGetCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFocusGetCallback:Ljava/lang/Runnable;

    .line 574
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    .line 581
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 579
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 445
    iget-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    if-nez v1, :cond_0

    .line 446
    const/4 v1, 0x0

    return v1

    .line 448
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@M_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGenericMotionEvent event.getSource()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x2002

    if-ne v1, v2, :cond_1

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 471
    :cond_1
    return v4

    .line 454
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v0, "eventDesc":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    .line 457
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    const-string/jumbo v2, ","

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 462
    return v4

    .line 465
    .end local v0    # "eventDesc":Ljava/lang/StringBuilder;
    :pswitch_1
    return v4

    .line 452
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 476
    iget-boolean v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFullScreenFlag:Z

    if-eqz v3, :cond_4

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@M_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyPreIme keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v3, :cond_3

    .line 481
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 482
    .local v0, "asciiCode":I
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_1

    .line 483
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@M_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find unicode for keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->keyCodeToAscii(I)I

    move-result v0

    .line 486
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_5

    const/4 v2, 0x1

    .line 487
    .local v2, "onKeyUp":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get4(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x83

    if-ne p1, v3, :cond_2

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@M_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Latin Test Mode enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get7(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I

    move-result v0

    .line 490
    if-eqz v2, :cond_2

    .line 491
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get7(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_6

    .line 492
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    const/16 v4, 0xa0

    invoke-static {v3, v4}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-set2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)I

    .line 498
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@M_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyPreIme asciiCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-nez v0, :cond_7

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@M_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find control for keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "asciiCode":I
    .end local v2    # "onKeyUp":Z
    :cond_3
    return v7

    .line 477
    :cond_4
    return v7

    .line 486
    .restart local v0    # "asciiCode":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "onKeyUp":Z
    goto/16 :goto_0

    .line 494
    :cond_6
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-static {v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get7(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-set2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)I

    goto :goto_1

    .line 502
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v1, "eventDesc":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_8

    const/4 v3, 0x4

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    const-string/jumbo v4, ","

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 507
    const-string/jumbo v4, "0x%04x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    const-string/jumbo v4, ", 0x0000"

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 510
    return v8

    .line 505
    :cond_8
    const/4 v3, 0x3

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    iget-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    if-nez v2, :cond_0

    .line 384
    return v5

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 387
    .local v0, "action":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@M_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 440
    :cond_1
    :goto_0
    return v6

    .line 390
    :pswitch_0
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v2, :cond_2

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v1, "eventDesc":Ljava/lang/StringBuilder;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 394
    const-string/jumbo v3, ","

    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 399
    .end local v1    # "eventDesc":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitX:F

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitY:F

    .line 401
    iput-boolean v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    .line 402
    invoke-direct {p0, v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->checkForLongClick(I)V

    goto :goto_0

    .line 406
    :pswitch_1
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v2, :cond_3

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .restart local v1    # "eventDesc":Ljava/lang/StringBuilder;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    const-string/jumbo v3, ","

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 415
    .end local v1    # "eventDesc":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    goto :goto_0

    .line 419
    :pswitch_2
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v2, :cond_4

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .restart local v1    # "eventDesc":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    const-string/jumbo v3, ","

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 428
    .end local v1    # "eventDesc":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitY:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mTouchSlop:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    goto/16 :goto_0

    .line 434
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    goto/16 :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 518
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z

    .line 521
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFocusGetCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFocusGetCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 517
    :cond_0
    return-void
.end method
