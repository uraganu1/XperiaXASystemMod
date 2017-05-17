.class public Lcom/sonyericsson/movablepanes/paneview/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;,
        Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;,
        Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;
    }
.end annotation


# static fields
.field private static final ILLEGAL_POINTER_INDEX_VALUE:I = -0x1


# instance fields
.field private mEnableHorizontalDrag:Z

.field private mEnableVerticalDrag:Z

.field private mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastX:I

.field private mLastY:I

.field private mLongPressDelay:J

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mNotClickOrLongPressCalled:Z

.field private mPointerId:I

.field private mPointerIdIsInitialized:Z

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field private mTouchSlop2:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartX:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartY:I

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    return-object p1
.end method

.method public constructor <init>(Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;IJ)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;
    .param p2, "touchSlop"    # I
    .param p3, "longPressDelay"    # J

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerIdIsInitialized:Z

    .line 130
    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    .line 169
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;-><init>(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 191
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    .line 192
    mul-int v0, p2, p2

    iput v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mTouchSlop2:I

    .line 193
    iput-wide p3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressDelay:J

    .line 194
    sget-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 314
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 315
    .local v0, "pointerIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v1, v3

    .line 317
    .local v1, "x":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v2, v3

    .line 318
    .local v2, "y":I
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v3, v1, v2}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onTouchStart(II)V

    .line 319
    iput p2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerId:I

    .line 320
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerIdIsInitialized:Z

    .line 321
    iput v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastX:I

    .line 322
    iput v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastY:I

    .line 323
    iput v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartX:I

    .line 324
    iput v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartY:I

    .line 325
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 326
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 327
    sget-object v3, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressDelay:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method private handleTouchEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 413
    iput-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 415
    :cond_0
    sget-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 416
    iput-boolean v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerIdIsInitialized:Z

    .line 417
    iput-boolean v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mNotClickOrLongPressCalled:Z

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onTouchEnd()V

    .line 409
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 339
    iget v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 340
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 342
    .local v3, "x":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 344
    .local v4, "y":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v6, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v6, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v5, v6, :cond_1

    .line 345
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->startDragIfNeeded(II)V

    .line 347
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v6, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v5, v6, :cond_4

    .line 348
    iget v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastX:I

    sub-int v0, v3, v5

    .line 349
    .local v0, "dx":I
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->onNotClickOrLongPress()V

    .line 350
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v5, v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onHorizontalDrag(I)V

    .line 351
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 359
    .end local v0    # "dx":I
    :cond_2
    :goto_0
    iput v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastX:I

    .line 360
    iput v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastY:I

    .line 337
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    return-void

    .line 352
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v6, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v5, v6, :cond_2

    .line 353
    iget v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastY:I

    sub-int v1, v4, v5

    .line 354
    .local v1, "dy":I
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->onNotClickOrLongPress()V

    .line 355
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v5, v1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onVerticalDrag(I)V

    .line 356
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private handleTouchPointerUp(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 391
    .local v3, "pointerIndex":I
    iget-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 392
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 391
    invoke-interface {v4, v5, v6}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onSecondaryClick(II)V

    .line 394
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 395
    .local v2, "pointerId":I
    iget-boolean v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerIdIsInitialized:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mPointerId:I

    if-ne v2, v4, :cond_0

    .line 399
    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 400
    .local v1, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 401
    .local v0, "newPointerId":I
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    .line 402
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchDown(Landroid/view/MotionEvent;I)V

    .line 388
    .end local v0    # "newPointerId":I
    .end local v1    # "newPointerIndex":I
    :cond_0
    return-void

    .line 399
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "newPointerIndex":I
    goto :goto_0
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v3, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v2, v3, :cond_1

    .line 371
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    iget v3, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartX:I

    iget v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartY:I

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onClick(II)V

    .line 380
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    .line 369
    return-void

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v3, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v2, v3, :cond_2

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v3, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v2, v3, :cond_0

    .line 374
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 376
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 377
    .local v0, "velocityX":F
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 378
    .local v1, "velocityY":F
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onFling(FF)V

    goto :goto_0
.end method

.method private onNotClickOrLongPress()V
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mNotClickOrLongPressCalled:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onNotClickOrLongPress()V

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mNotClickOrLongPressCalled:Z

    .line 453
    :cond_0
    return-void
.end method

.method private startDragIfNeeded(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 429
    iget v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartX:I

    sub-int v0, p1, v4

    .line 430
    .local v0, "dx":I
    iget v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mStartY:I

    sub-int v2, p2, v4

    .line 431
    .local v2, "dy":I
    mul-int v1, v0, v0

    .line 432
    .local v1, "dx2":I
    mul-int v3, v2, v2

    .line 433
    .local v3, "dy2":I
    add-int v4, v1, v3

    iget v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mTouchSlop2:I

    if-le v4, v5, :cond_1

    .line 435
    iget-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    if-le v1, v3, :cond_2

    .line 437
    iget-boolean v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableHorizontalDrag:Z

    if-eqz v4, :cond_0

    .line 438
    sget-object v4, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 445
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->isDragging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 447
    sget-object v4, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 448
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->onNotClickOrLongPress()V

    .line 428
    :cond_1
    return-void

    .line 441
    :cond_2
    iget-boolean v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    if-eqz v4, :cond_0

    .line 442
    sget-object v4, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v4, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public cancelTouch()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v0, v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    .line 227
    :cond_0
    return-void
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mLastY:I

    return v0
.end method

.method public isDragging()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v2, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mState:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v2, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v1, v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableHorizontalDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    .line 304
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 282
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 289
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 293
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 297
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->handleTouchPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public setEnableHorizontalDrag(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableHorizontalDrag:Z

    .line 203
    return-void
.end method

.method public setEnableVerticalDrag(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    .line 212
    return-void
.end method
