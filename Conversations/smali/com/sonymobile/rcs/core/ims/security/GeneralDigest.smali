.class public abstract Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    .line 38
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-wide v2, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->byteCount:J

    const/4 v4, 0x3

    shl-long v0, v2, v4

    .line 102
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->update(B)V

    .line 104
    :goto_0
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->processLength(J)V

    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->processBlock()V

    .line 111
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v5}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->update(B)V

    goto :goto_0
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 114
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->byteCount:J

    .line 116
    iput v4, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    const/4 v0, 0x0

    .line 117
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    aput-byte v4, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 55
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 60
    :goto_0
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->byteCount:J

    .line 61
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->processWord([BI)V

    .line 57
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    goto :goto_0
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 67
    :goto_0
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBufOff:I

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    .line 88
    :goto_2
    if-gtz p3, :cond_3

    .line 94
    return-void

    .line 67
    :cond_1
    if-lez p3, :cond_0

    .line 68
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->update(B)V

    .line 70
    add-int/lit8 p2, p2, 0x1

    .line 71
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->processWord([BI)V

    .line 80
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 81
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 82
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->byteCount:J

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->byteCount:J

    goto :goto_1

    .line 89
    :cond_3
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->update(B)V

    .line 91
    add-int/lit8 p2, p2, 0x1

    .line 92
    add-int/lit8 p3, p3, -0x1

    goto :goto_2
.end method
