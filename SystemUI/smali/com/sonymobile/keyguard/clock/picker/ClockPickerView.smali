.class public Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.super Landroid/widget/HorizontalScrollView;
.source "ClockPickerView.java"

# interfaces
.implements Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;,
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;,
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;,
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;
    }
.end annotation


# instance fields
.field private final mClockItemOnClickListener:Landroid/view/View$OnClickListener;

.field private mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

.field private mClocksContainer:Landroid/view/ViewGroup;

.field private mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field private final mDismissPickerListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPageSnapHandled:Z

.field private mPageWidthPixels:I

.field private mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

.field private final mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->selectPage(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    .line 56
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockItemOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mDismissPickerListener:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    .line 87
    return-void
.end method

.method private addClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "clock"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .param p2, "clockContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 290
    sget v2, Lcom/android/keyguard/R$layout;->somc_keyguard_clock_container_clock_item:I

    const/4 v3, 0x1

    .line 289
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 292
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 294
    .local v0, "clockItem":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->initWithClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    .line 295
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockItemOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method

.method private calculatePageWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "width":I
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v3}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v3, v4}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 236
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 237
    .local v1, "item":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getPageWidthInPixels()I

    move-result v2

    .line 240
    .end local v0    # "content":Landroid/view/ViewGroup;
    .end local v1    # "item":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    :cond_0
    :goto_0
    return v2

    .line 237
    .restart local v0    # "content":Landroid/view/ViewGroup;
    .restart local v1    # "item":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method private createSelectionTimeOut(I)V
    .locals 6
    .param p1, "forPageIndex"    # I

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->clearSelectionTimeout()V

    .line 377
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 378
    .local v1, "res":Landroid/content/res/Resources;
    move v0, p1

    .line 382
    .local v0, "page":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 383
    const/4 v3, 0x1

    .line 382
    if-ne v2, v3, :cond_0

    .line 384
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, p1

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    invoke-virtual {v2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->setForSelectedPageIndex(I)V

    .line 388
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void
.end method

.method private createViews(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "clocks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "clock$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 213
    .local v0, "clock":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->addClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 211
    .end local v0    # "clock":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    :cond_0
    return-void
.end method

.method private ensureSamePageIsCenteredAfterScaling(F)V
    .locals 5
    .param p1, "scaleTo"    # F

    .prologue
    .line 251
    iget v4, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 252
    .local v2, "newPageWidthPx":I
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v3

    .line 253
    .local v3, "oldPageWidthPx":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getScrollX()I

    move-result v4

    int-to-float v1, v4

    .line 254
    .local v1, "currentScrollX":F
    int-to-float v4, v3

    div-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 258
    .local v0, "currentPage":I
    mul-int v4, v0, v2

    iput v4, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScrollX:I

    .line 261
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeOut(I)V

    .line 250
    return-void
.end method

.method private ensureTouchEndsOnAPage(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->DRAG:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->snapToPage(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPageWidthInPixels()I
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private isViewDepictingClock(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clockName"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "isDipctingClock":Z
    instance-of v3, p1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 332
    check-cast v1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 333
    .local v1, "clockItem":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v3

    iget-object v0, v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    .line 334
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const/4 v2, 0x1

    .line 338
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "clockItem":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    :cond_0
    return v2
.end method

.method private selectPage(I)V
    .locals 5
    .param p1, "pageIndex"    # I

    .prologue
    .line 363
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, "page":Landroid/view/View;
    instance-of v2, v1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 365
    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 366
    .local v0, "clockItem":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V

    .line 362
    .end local v0    # "clockItem":Lcom/sonymobile/keyguard/clock/picker/ClockItem;
    :cond_0
    return-void
.end method

.method private snapToPage(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V
    .locals 5
    .param p1, "motionType"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v3

    .line 349
    .local v3, "pageWidthPx":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getScrollX()I

    move-result v4

    .line 348
    invoke-virtual {p1, v4, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->getModifiedScrollPosition(II)I

    move-result v4

    int-to-float v1, v4

    .line 350
    .local v1, "currentScrollX":F
    int-to-float v4, v3

    div-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 351
    .local v0, "currentPage":I
    mul-int v2, v0, v3

    .line 352
    .local v2, "finalScrollPosition":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->smoothScrollTo(II)V

    .line 353
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeOut(I)V

    .line 346
    return-void
.end method

.method private updateContentPadding(F)V
    .locals 7
    .param p1, "scaleTo"    # F

    .prologue
    const/4 v6, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 274
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 275
    .local v1, "containerWidth":I
    int-to-float v3, v1

    iget v4, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 276
    .local v0, "centeringWidth":F
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 277
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 276
    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->setPadding(IIII)V

    .line 271
    .end local v0    # "centeringWidth":F
    .end local v1    # "containerWidth":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSelectionTimeout()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public createSelectionTimeoutForSelectedPage()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 320
    .local v0, "currentPage":I
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeOut(I)V

    .line 318
    return-void
.end method

.method public enableScaleContainerScaling()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setAnimateScaling(Z)V

    .line 167
    return-void
.end method

.method public fling(I)V
    .locals 2
    .param p1, "velocityX"    # I

    .prologue
    .line 115
    if-lez p1, :cond_0

    sget-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_LEFT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    .line 116
    .local v0, "direction":Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    .line 117
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->snapToPage(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V

    .line 114
    return-void

    .line 115
    .end local v0    # "direction":Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
    :cond_0
    sget-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_RIGHT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    .restart local v0    # "direction":Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
    goto :goto_0
.end method

.method public initPages()V
    .locals 3

    .prologue
    .line 146
    sget v1, Lcom/android/keyguard/R$id;->somc_keyguard_clockplugin_picker_scale_container:I

    .line 145
    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    iput-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    .line 147
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotXViewStart(Z)V

    .line 148
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v1, p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setSomcKeyguardClockScaleContainerCallback(Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;)V

    .line 150
    sget v1, Lcom/android/keyguard/R$id;->somc_keyguard_clock_picker_content:I

    .line 149
    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    iput-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    .line 151
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mDismissPickerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget v1, Lcom/android/keyguard/R$id;->somc_keyguard_clock_picker_scaled_clocks:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    .line 155
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->loadClockPlugins()Ljava/util/LinkedList;

    move-result-object v0

    .line 156
    .local v0, "clocks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createViews(Ljava/util/LinkedList;)V

    .line 157
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->calculatePageWidth()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    .line 161
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setAnimateScaling(Z)V

    .line 143
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 221
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 222
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->updateContentPadding(F)V

    .line 223
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->ensureSamePageIsCenteredAfterScaling(F)V

    .line 220
    return-void
.end method

.method public onScalingCancelled(F)V
    .locals 1
    .param p1, "scaleTo"    # F

    .prologue
    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->updateContentPadding(F)V

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->requestLayout()V

    .line 193
    return-void
.end method

.method public onScalingFinished(F)V
    .locals 2
    .param p1, "scaleTo"    # F

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->resizeDismissView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public onScalingStarted(F)V
    .locals 1
    .param p1, "scaleTo"    # F

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->updateContentPadding(F)V

    .line 185
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->ensureSamePageIsCenteredAfterScaling(F)V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->setScaleLevel(F)V

    .line 183
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 106
    .local v0, "returnValue":Z
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->ensureTouchEndsOnAPage(Landroid/view/MotionEvent;)V

    .line 107
    return v0
.end method

.method public positionPicker(Ljava/lang/String;)V
    .locals 4
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 306
    .local v0, "numberOfChildren":I
    const/4 v2, 0x0

    .local v2, "viewIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 307
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 308
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->isViewDepictingClock(Landroid/view/View;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v3

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScrollX:I

    .line 304
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 306
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setController(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0
    .param p1, "clockPickerController"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    .line 96
    return-void
.end method
