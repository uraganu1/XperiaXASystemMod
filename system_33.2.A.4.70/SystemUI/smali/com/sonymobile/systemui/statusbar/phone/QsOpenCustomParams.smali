.class public Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;
.super Ljava/lang/Object;
.source "QsOpenCustomParams.java"


# instance fields
.field private final mMinQsOpenAmount:F

.field private mQsOpenFraction:F

.field private mQsOpenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mMinQsOpenAmount:F

    .line 19
    return-void
.end method


# virtual methods
.method public getQsOpenStartHeight()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mQsOpenHeight:I

    return v0
.end method

.method public getQsOpenStartHeightFraction()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mQsOpenFraction:F

    return v0
.end method

.method public isOpen(FF)Z
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "qsOpenAmount"    # F

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mQsOpenFraction:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mMinQsOpenAmount:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public update(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "maxPanelHeight"    # I

    .prologue
    const v0, 0x3ef5c28f    # 0.48f

    .line 24
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mQsOpenHeight:I

    .line 25
    if-lez p1, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mQsOpenHeight:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenCustomParams;->mQsOpenFraction:F

    .line 23
    return-void
.end method
