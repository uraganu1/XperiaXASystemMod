.class public abstract Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;
.super Ljava/lang/Object;
.source "ClockPart.java"


# instance fields
.field private final mColorResourceId:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadians:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "colorResourceId"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mPaint:Landroid/graphics/Paint;

    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    .line 25
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mColorResourceId:I

    .line 24
    return-void
.end method


# virtual methods
.method protected getColorResourceId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mColorResourceId:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    return v0
.end method

.method public setRotation(F)Z
    .locals 2
    .param p1, "radians"    # F

    .prologue
    .line 43
    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 44
    .local v0, "hasRotationChanged":Z
    :goto_0
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    .line 45
    return v0

    .line 43
    .end local v0    # "hasRotationChanged":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasRotationChanged":Z
    goto :goto_0
.end method
