.class public abstract Lcom/sonyericsson/movablepanes/util/Dynamics;
.super Ljava/lang/Object;
.source "Dynamics.java"


# static fields
.field private static final MAX_TIMESTEP:I = 0x1f4

.field private static final TIMESTEP:I = 0x14


# instance fields
.field protected mLastTime:J

.field protected mMaxPosition:F

.field protected mMinPosition:F

.field protected mPosition:F

.field protected mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    .line 33
    const v0, -0x800001

    iput v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mLastTime:J

    .line 12
    return-void
.end method


# virtual methods
.method public adjustPositionAndVelocity()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mVelocity:F

    .line 102
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    iget v1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 103
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    iput v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    iget v1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 105
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    iput v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    goto :goto_0
.end method

.method protected getDistanceToLimit()F
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "distanceToLimit":F
    iget v1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 159
    iget v1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget v1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 161
    iget v1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mVelocity:F

    return v0
.end method

.method public isAtRest(FF)Z
    .locals 4
    .param p1, "velocityTolerance"    # F
    .param p2, "positionTolerance"    # F

    .prologue
    .line 84
    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    const/4 v0, 0x1

    .line 85
    .local v0, "standingStill":Z
    :goto_0
    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 86
    iget v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 87
    .local v1, "withinLimits":Z
    :goto_1
    if-eqz v0, :cond_3

    .end local v1    # "withinLimits":Z
    :goto_2
    return v1

    .line 84
    .end local v0    # "standingStill":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "standingStill":Z
    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "withinLimits":Z
    goto :goto_1

    .line 85
    .end local v1    # "withinLimits":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "withinLimits":Z
    goto :goto_1

    .line 87
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method public setMaxPosition(F)V
    .locals 0
    .param p1, "maxPosition"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMaxPosition:F

    .line 114
    return-void
.end method

.method public setMinPosition(F)V
    .locals 0
    .param p1, "minPosition"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mMinPosition:F

    .line 123
    return-void
.end method

.method public setState(FFJ)V
    .locals 1
    .param p1, "position"    # F
    .param p2, "velocity"    # F
    .param p3, "now"    # J

    .prologue
    .line 47
    iput p2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mVelocity:F

    .line 48
    iput p1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mPosition:F

    .line 49
    iput-wide p3, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mLastTime:J

    .line 46
    return-void
.end method

.method public update(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 133
    iget-wide v2, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mLastTime:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 135
    .local v0, "dt":I
    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 136
    const/16 v0, 0x1f4

    .line 139
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 140
    const/16 v2, 0x14

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 141
    .local v1, "step":I
    invoke-virtual {p0, v1}, Lcom/sonyericsson/movablepanes/util/Dynamics;->onUpdate(I)V

    .line 142
    add-int/lit8 v0, v0, -0x14

    goto :goto_0

    .line 145
    .end local v1    # "step":I
    :cond_1
    iput-wide p1, p0, Lcom/sonyericsson/movablepanes/util/Dynamics;->mLastTime:J

    .line 132
    return-void
.end method
