.class public Lcom/android/contacts/util/MoreMath;
.super Ljava/lang/Object;
.source "MoreMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 2
    .param p0, "input"    # D
    .param p2, "lowerBound"    # D
    .param p4, "upperBound"    # D

    .prologue
    .line 48
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    .line 49
    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    return-wide p4

    .line 50
    :cond_1
    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "input"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .prologue
    .line 38
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    .line 39
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    return p2

    .line 40
    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "input"    # I
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 28
    if-ge p0, p1, :cond_0

    return p1

    .line 29
    :cond_0
    if-le p0, p2, :cond_1

    return p2

    .line 30
    :cond_1
    return p0
.end method
