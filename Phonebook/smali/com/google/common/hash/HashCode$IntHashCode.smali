.class final Lcom/google/common/hash/HashCode$IntHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "hash"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 121
    iput p1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    .line 120
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 132
    iget v1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 133
    iget v1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 134
    iget v1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 135
    iget v1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 131
    return-object v0
.end method

.method public asInt()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    return v0
.end method

.method public asLong()J
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bits()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x20

    return v0
.end method

.method public padToLong()J
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method writeBytesToImpl([BII)V
    .locals 4
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 156
    add-int v1, p2, v0

    iget v2, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
