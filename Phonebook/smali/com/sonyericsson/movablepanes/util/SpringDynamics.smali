.class public Lcom/sonyericsson/movablepanes/util/SpringDynamics;
.super Lcom/sonyericsson/movablepanes/util/Dynamics;
.source "SpringDynamics.java"


# instance fields
.field protected mDamping:F

.field protected mDampingRatio:F

.field protected mFriction:F

.field protected mStiffness:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/util/Dynamics;-><init>()V

    return-void
.end method

.method private calculateAcceleration()F
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getDistanceToLimit()F

    move-result v1

    .line 58
    .local v1, "distanceFromLimit":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 59
    iget v2, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mStiffness:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mDamping:F

    iget v4, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 64
    .local v0, "acceleration":F
    :goto_0
    return v0

    .line 61
    .end local v0    # "acceleration":F
    :cond_0
    iget v2, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mFriction:F

    neg-float v2, v2

    iget v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    mul-float v0, v2, v3

    .restart local v0    # "acceleration":F
    goto :goto_0
.end method


# virtual methods
.method public getDampingRatio()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mDampingRatio:F

    return v0
.end method

.method public getStiffness()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mStiffness:F

    return v0
.end method

.method protected onUpdate(I)V
    .locals 7
    .param p1, "dt"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 72
    int-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v2, v3, v4

    .line 75
    .local v2, "fdt":F
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 78
    .local v0, "at":F
    iget v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mPosition:F

    iget v4, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    mul-float/2addr v4, v2

    mul-float v5, v6, v0

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mPosition:F

    .line 82
    iget v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    mul-float v4, v6, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->calculateAcceleration()F

    move-result v1

    .line 90
    .local v1, "atdt":F
    iget v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    mul-float v4, v6, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mVelocity:F

    .line 68
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mFriction:F

    .line 32
    return-void
.end method

.method public setSpring(FF)V
    .locals 4
    .param p1, "stiffness"    # F
    .param p2, "dampingRatio"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mStiffness:F

    .line 45
    iput p2, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mDampingRatio:F

    .line 46
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->mDamping:F

    .line 43
    return-void
.end method
