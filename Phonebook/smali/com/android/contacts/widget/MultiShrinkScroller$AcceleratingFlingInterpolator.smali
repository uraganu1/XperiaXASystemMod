.class Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceleratingFlingInterpolator"
.end annotation


# instance fields
.field private final mDurationMs:F

.field private final mNumberFrames:F

.field private final mPixelsDelta:I

.field private final mStartingSpeedPixelsPerFrame:F

.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method public constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;IFI)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p2, "durationMs"    # I
    .param p3, "startingSpeedPixelsPerSecond"    # F
    .param p4, "pixelsDelta"    # I

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getRefreshRate()F

    move-result v0

    div-float v0, p3, v0

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    .line 1285
    int-to-float v0, p2

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mDurationMs:F

    .line 1286
    iput p4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mPixelsDelta:I

    .line 1287
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mDurationMs:F

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getFrameIntervalMs()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mNumberFrames:F

    .line 1283
    return-void
.end method

.method private getRefreshRate()F
    .locals 3

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1308
    const-string/jumbo v2, "display"

    .line 1307
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1309
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    return v1
.end method


# virtual methods
.method public getFrameIntervalMs()J
    .locals 2

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1292
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mNumberFrames:F

    mul-float v0, v2, p1

    .line 1293
    .local v0, "animationIntervalNumber":F
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    mul-float/2addr v2, v0

    .line 1294
    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mPixelsDelta:I

    int-to-float v3, v3

    .line 1293
    div-float v1, v2, v3

    .line 1297
    .local v1, "linearDelta":F
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1298
    mul-float v2, p1, p1

    add-float/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2

    .line 1302
    :cond_0
    sub-float v2, p1, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method
