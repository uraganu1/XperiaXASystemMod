.class public Lcom/sonyericsson/movablepanes/transfer/TransferLayout;
.super Landroid/widget/FrameLayout;
.source "TransferLayout.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/transfer/TransferHandler;
.implements Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;,
        Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;
    }
.end annotation


# static fields
.field public static final TRANSFER_TARGET_TAG:I


# instance fields
.field private mFocusHandler:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

.field private mInTransfer:Z

.field private mOnInterceptHoverListener:Landroid/view/View$OnHoverListener;

.field private mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

.field private mResetFocusability:Z

.field private mTargetRect:Landroid/graphics/Rect;

.field private mTouchX:I

.field private mTouchY:I

.field private mTouchingView:Z

.field private mTransferListener:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

.field private mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

.field private mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->TRANSFER_TARGET_TAG:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    .line 139
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setDescendantFocusability(I)V

    .line 141
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    .line 136
    return-void
.end method

.method private doHinting(II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 226
    invoke-direct {p0, p0, p1, p2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    move-result-object v0

    .line 227
    .local v0, "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    if-eq v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    invoke-interface {v1}, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;->cancelHint()V

    .line 230
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    .line 232
    return-object v0
.end method

.method private getTransferViewHitRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getHitRect(Landroid/graphics/Rect;)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getPivotX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getPivotY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 285
    return-void
.end method

.method private hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    .locals 12
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 246
    const/4 v6, 0x0

    .line 247
    .local v6, "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 248
    .local v7, "targetHitRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 249
    .local v1, "hintHitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .end local v6    # "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    if-nez v6, :cond_3

    .line 250
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "child":Landroid/view/View;
    sget v9, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v0, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 255
    .local v4, "tag":Ljava/lang/Object;
    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 256
    invoke-direct {p0, v1}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->getTransferViewHitRect(Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 259
    invoke-static {v7, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    .line 258
    if-eqz v9, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 261
    .local v3, "left":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 263
    .local v8, "top":I
    if-eqz v4, :cond_1

    instance-of v9, v4, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_1

    .line 264
    check-cast v4, Ljava/lang/ref/WeakReference;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 265
    .local v5, "tagObj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v9, v5, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    if-eqz v9, :cond_0

    move-object v9, v5

    .line 266
    check-cast v9, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    sub-int v10, p2, v3

    sub-int v11, p3, v8

    invoke-interface {v9, v10, v11}, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;->hint(II)Z

    move-result v9

    .line 265
    if-eqz v9, :cond_0

    move-object v6, v5

    .line 267
    check-cast v6, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    .line 249
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "left":I
    .end local v5    # "tagObj":Ljava/lang/Object;
    .end local v8    # "top":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 269
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "left":I
    .restart local v4    # "tag":Ljava/lang/Object;
    .restart local v8    # "top":I
    :cond_1
    instance-of v9, v0, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    if-eqz v9, :cond_2

    move-object v9, v0

    .line 270
    check-cast v9, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    sub-int v10, p2, v3

    sub-int v11, p3, v8

    invoke-interface {v9, v10, v11}, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;->hint(II)Z

    move-result v9

    .line 269
    if-eqz v9, :cond_2

    move-object v6, v0

    .line 271
    check-cast v6, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    .local v6, "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    goto :goto_1

    .line 272
    .end local v6    # "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    :cond_2
    instance-of v9, v0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    .line 273
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    sub-int v9, p2, v3

    sub-int v10, p3, v8

    invoke-direct {p0, v0, v9, v10}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    move-result-object v6

    .restart local v6    # "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    goto :goto_1

    .line 277
    .end local v3    # "left":I
    .end local v4    # "tag":Ljava/lang/Object;
    .end local v6    # "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    .end local v8    # "top":I
    :cond_3
    invoke-static {v1}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "hintHitRect":Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 280
    const/4 v7, 0x0

    .line 282
    .local v7, "targetHitRect":Landroid/graphics/Rect;
    return-object v6
.end method

.method private static resetAnimationProperties(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 378
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 379
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 380
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 381
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    .line 382
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 383
    instance-of v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    if-eqz v0, :cond_0

    .line 384
    check-cast p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setProgress(F)V

    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateDragDropCorrection(Landroid/view/View;)I
    .locals 2
    .param p1, "draggedView"    # Landroid/view/View;

    .prologue
    .line 369
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelTransfer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    invoke-interface {v0}, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;->cancelHint()V

    .line 416
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->dropFinished(Lcom/sonyericsson/movablepanes/transfer/TransferTarget;I)V

    .line 411
    :cond_1
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mFocusHandler:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mFocusHandler:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;->onUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x1

    return v0

    .line 487
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public dropFinished(Lcom/sonyericsson/movablepanes/transfer/TransferTarget;I)V
    .locals 4
    .param p1, "target"    # Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    .param p2, "result"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 432
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    if-eqz v2, :cond_0

    .line 433
    if-ne p2, v0, :cond_2

    .line 434
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    invoke-interface {v2}, Lcom/sonyericsson/movablepanes/transfer/TransferSource;->onTransferCompleted()V

    .line 442
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferListener:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferListener:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

    if-ne p2, v0, :cond_4

    :goto_1
    invoke-interface {v2, p1, v0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;->onTransferEnd(Lcom/sonyericsson/movablepanes/transfer/TransferTarget;Z)V

    .line 446
    :cond_1
    iput-object v3, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    .line 447
    iput-boolean v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    .line 448
    iput-object v3, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mPreviousHintTarget:Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    .line 430
    return-void

    .line 435
    :cond_2
    if-nez p2, :cond_3

    .line 436
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    invoke-interface {v2}, Lcom/sonyericsson/movablepanes/transfer/TransferSource;->onTransferCanceled()V

    goto :goto_0

    .line 437
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    invoke-interface {v2}, Lcom/sonyericsson/movablepanes/transfer/TransferSource;->onTransferCanceled()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 443
    goto :goto_1
.end method

.method public getSurrogateTransferView()Landroid/view/View;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    return-object v0
.end method

.method public isInTransferMode()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 147
    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .line 145
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mOnInterceptHoverListener:Landroid/view/View$OnHoverListener;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mOnInterceptHoverListener:Landroid/view/View$OnHoverListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 475
    .end local v0    # "consumed":Z
    :cond_0
    if-nez v0, :cond_1

    .line 476
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 478
    :cond_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchX:I

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchY:I

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mFocusHandler:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mFocusHandler:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 492
    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    iget-boolean v4, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    if-nez v4, :cond_0

    .line 172
    return v7

    .line 174
    :cond_0
    iget-boolean v4, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchingView:Z

    if-nez v4, :cond_1

    .line 178
    return v8

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 182
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 183
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 185
    .local v3, "y":I
    if-nez v0, :cond_2

    .line 186
    iput v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchX:I

    .line 187
    iput v3, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchY:I

    .line 190
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchX:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchY:I

    sub-int v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    iget-object v4, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setTranslationX(F)V

    .line 193
    iget-object v4, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setTranslationY(F)V

    .line 194
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->doHinting(II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    .line 197
    :cond_3
    if-eq v0, v8, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 200
    :cond_4
    iget v4, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchX:I

    iget v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchY:I

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->doHinting(II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    move-result-object v1

    .line 202
    .local v1, "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    if-eqz v1, :cond_6

    .line 203
    invoke-interface {v1, p0}, Lcom/sonyericsson/movablepanes/transfer/TransferTarget;->drop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V

    .line 209
    :goto_0
    iput-boolean v7, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchingView:Z

    .line 212
    .end local v1    # "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    :cond_5
    iput v2, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchX:I

    .line 213
    iput v3, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchY:I

    .line 215
    return v8

    .line 205
    .restart local v1    # "target":Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    :cond_6
    invoke-virtual {p0, v9, v7}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->dropFinished(Lcom/sonyericsson/movablepanes/transfer/TransferTarget;I)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mResetFocusability:Z

    if-eqz v0, :cond_0

    .line 154
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setDescendantFocusability(I)V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setFocusHandler(Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mFocusHandler:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$FocusHandler;

    .line 456
    return-void
.end method

.method public setOnInterceptHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mOnInterceptHoverListener:Landroid/view/View$OnHoverListener;

    .line 465
    return-void
.end method

.method public setResetFocusability(Z)V
    .locals 0
    .param p1, "reset"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mResetFocusability:Z

    .line 165
    return-void
.end method

.method public setTransferListener(Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;)V
    .locals 0
    .param p1, "transferListener"    # Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferListener:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

    .line 393
    return-void
.end method

.method public shouldCopyTransferItem()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    invoke-interface {v0}, Lcom/sonyericsson/movablepanes/transfer/TransferSource;->requestCopy()Z

    move-result v0

    return v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public transferView(Lcom/sonyericsson/movablepanes/transfer/TransferSource;Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 11
    .param p1, "source"    # Lcom/sonyericsson/movablepanes/transfer/TransferSource;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "hitrect"    # Landroid/graphics/Rect;
    .param p4, "sourceView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferSource:Lcom/sonyericsson/movablepanes/transfer/TransferSource;

    .line 318
    iput-boolean v10, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mInTransfer:Z

    .line 319
    iput-boolean v10, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchingView:Z

    .line 321
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 323
    .local v4, "snapshot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setVisibility(I)V

    .line 327
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 328
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-static {v5}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->resetAnimationProperties(Landroid/view/View;)V

    .line 330
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 334
    new-array v3, v8, [I

    .line 335
    .local v3, "location":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 337
    new-array v2, v8, [I

    .line 338
    .local v2, "localLocation":[I
    invoke-virtual {p0, v2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->getLocationInWindow([I)V

    .line 341
    aget v5, v3, v9

    aget v6, v2, v9

    sub-int/2addr v5, v6

    aput v5, v3, v9

    .line 342
    aget v5, v3, v10

    aget v6, v2, v10

    sub-int/2addr v5, v6

    aput v5, v3, v10

    .line 344
    invoke-virtual {p0, p2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->calculateDragDropCorrection(Landroid/view/View;)I

    move-result v1

    .line 345
    .local v1, "correction":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    neg-int v6, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 348
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    iget-object v6, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setTranslationX(F)V

    .line 349
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    iget-object v6, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTargetRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setTranslationY(F)V

    .line 351
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setScaleX(F)V

    .line 352
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferView:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setScaleY(F)V

    .line 354
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferListener:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

    if-eqz v5, :cond_0

    .line 355
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTransferListener:Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;

    invoke-interface {v5}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;->onTransferStart()V

    .line 358
    :cond_0
    iget v5, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchX:I

    iget v6, p0, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->mTouchY:I

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->doHinting(II)Lcom/sonyericsson/movablepanes/transfer/TransferTarget;

    .line 316
    return-void
.end method

.method public transferView(Lcom/sonyericsson/movablepanes/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Lcom/sonyericsson/movablepanes/transfer/TransferSource;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "sourceView"    # Landroid/view/View;

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->transferView(Lcom/sonyericsson/movablepanes/transfer/TransferSource;Landroid/view/View;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 310
    return-void
.end method
