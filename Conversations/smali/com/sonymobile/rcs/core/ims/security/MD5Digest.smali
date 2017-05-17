.class public Lcom/sonymobile/rcs/core/ims/security/MD5Digest;
.super Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;
.source "MD5Digest.java"


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->reset()V

    .line 39
    return-void
.end method

.method private F(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 176
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private G(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 180
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 184
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private K(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 188
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I

    .prologue
    .line 169
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 84
    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 85
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 86
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 87
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 88
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->finish()V

    .line 93
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->unpackWord(I[BI)V

    .line 94
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->unpackWord(I[BI)V

    .line 95
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->unpackWord(I[BI)V

    .line 96
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->unpackWord(I[BI)V

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->reset()V

    const/16 v0, 0x10

    .line 100
    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 62
    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    .line 192
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H1:I

    .line 193
    .local v0, "a":I
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H2:I

    .line 194
    .local v1, "b":I
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H3:I

    .line 195
    .local v2, "c":I
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H4:I

    .line 200
    .local v3, "d":I
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 201
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x173848aa

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 202
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x242070db

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 203
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3e423112

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 204
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0xa83f051

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 205
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, 0x4787c62a

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 206
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x57cfb9ed

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 207
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, -0x2b96aff

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 208
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x698098d8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 209
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x74bb0851

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 210
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xa44f

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 211
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x76a32842

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 212
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6b901122

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v11}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 213
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 214
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x5986bc72

    add-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 215
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x49b40821

    add-int/2addr v5, v6

    const/16 v6, 0x16

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 220
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x9e1da9e

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 221
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x3fbf4cc0

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 222
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x265e5a51

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 223
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x16493856

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 224
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x29d0efa3

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 225
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x2441453

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 226
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x275e197f

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 227
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x182c0438

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 228
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, 0x21e1cde6

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 229
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3cc8f82a

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 230
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xb2af279

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 231
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x455a14ed

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 232
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x561c16fb

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 233
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3105c08

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 234
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, 0x676f02d9

    add-int/2addr v5, v6

    const/16 v6, 0xe

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 235
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x72d5b376

    add-int/2addr v5, v6

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 240
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x5c6be

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 241
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x788e097f

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 242
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6d9d6122

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 243
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x21ac7f4

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 244
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x5b4115bc

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 245
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 246
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, -0x944b4a0

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 247
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x41404390

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 248
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 249
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x155ed806

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 250
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x2b10cf7b

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 251
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 252
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x262b2fc7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 253
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 254
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x1fa27cf8

    add-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 255
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x3b53a99b

    add-int/2addr v5, v6

    const/16 v6, 0x17

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 260
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0xbd6ddbc

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 261
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    const v6, 0x432aff97

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 262
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 263
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    const v6, -0x36c5fc7

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 264
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x655b59c3

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 265
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x70f3336e

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 266
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x100b83

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 267
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x7a7ba22f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 268
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x6fa87e4f

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 269
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x1d31920

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 270
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    const v6, -0x5cfebcec

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 271
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x4e0811a1    # 5.7071418E8f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 272
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x8ac817e

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v0, v5, v1

    .line 273
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x42c50dcb

    add-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v3, v5, v0

    .line 274
    invoke-direct {p0, v3, v0, v1}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v5, v6

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v2, v5, v3

    .line 275
    invoke-direct {p0, v2, v3, v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aget v6, v6, v12

    add-int/2addr v5, v6

    const v6, -0x14792c6f

    add-int/2addr v5, v6

    const/16 v6, 0x15

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int v1, v5, v2

    .line 277
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H1:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H1:I

    .line 278
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H2:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H2:I

    .line 279
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H3:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H3:I

    .line 280
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H4:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H4:I

    const/4 v5, 0x0

    .line 285
    iput v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->xOff:I

    const/4 v4, 0x0

    .line 286
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 289
    return-void

    .line 287
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 75
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->xOff:I

    if-gt v0, v4, :cond_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 80
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 81
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->processBlock()V

    goto :goto_0
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 69
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->xOff:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->processBlock()V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/security/GeneralDigest;->reset()V

    const v1, 0x67452301

    .line 109
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H1:I

    const v1, -0x10325477

    .line 110
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H2:I

    const v1, -0x67452302

    .line 111
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H3:I

    const v1, 0x10325476

    .line 112
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->H4:I

    .line 114
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->xOff:I

    const/4 v0, 0x0

    .line 116
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->X:[I

    aput v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
