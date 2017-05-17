.class public final Lcom/google/common/hash/HashCodes;
.super Ljava/lang/Object;
.source "HashCodes.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes([B)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p0, "hash"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static fromLong(J)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p0, "hash"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method
