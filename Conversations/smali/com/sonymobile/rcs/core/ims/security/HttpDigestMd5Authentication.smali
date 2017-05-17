.class public Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;
.super Ljava/lang/Object;
.source "HttpDigestMd5Authentication.java"


# static fields
.field private static final HEX:[C


# instance fields
.field private cnonce:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private md5Digest:Lcom/sonymobile/rcs/core/ims/security/MD5Digest;

.field private nc:I

.field private nextnonce:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x10

    .line 51
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->HEX:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->realm:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->opaque:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nextnonce:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->cnonce:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nc:I

    .line 93
    new-instance v0, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->md5Digest:Lcom/sonymobile/rcs/core/ims/security/MD5Digest;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 104
    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 300
    if-eqz p1, :cond_0

    .line 303
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->md5Digest:Lcom/sonymobile/rcs/core/ims/security/MD5Digest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->update([BII)V

    .line 304
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->md5Digest:Lcom/sonymobile/rcs/core/ims/security/MD5Digest;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->getDigestSize()I

    move-result v2

    new-array v1, v2, [B

    .line 305
    .local v1, "returnValue":[B
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->md5Digest:Lcom/sonymobile/rcs/core/ims/security/MD5Digest;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/rcs/core/ims/security/MD5Digest;->doFinal([BI)I

    .line 306
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "returnValue":[B
    :cond_0
    const-string/jumbo p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    :goto_1
    return-object v6

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "HTTP digest MD5 algo has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private toHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 244
    .local v2, "pos":I
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .local v0, "c":[C
    const/4 v1, 0x0

    .line 245
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 249
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 246
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->HEX:[C

    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 247
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    sget-object v4, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->HEX:[C

    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildNonceCounter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nc:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 233
    return-object v0

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "nc"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid Authorization header"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->realm:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "a1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "a2":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    const-string/jumbo v3, "auth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    if-nez p5, :cond_5

    .line 279
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid Authorization header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :cond_4
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid qop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->cnonce:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    const-string/jumbo v3, "auth-int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 286
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->cnonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 283
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p6}, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNextnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nextnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public setNextnonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextnonce"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nextnonce:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .param p1, "opaque"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->opaque:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 2
    .param p1, "qop"    # Ljava/lang/String;

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 205
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->qop:Ljava/lang/String;

    .line 206
    return-void

    :cond_0
    const-string/jumbo v0, ","

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->realm:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public updateNonceParameters()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nextnonce:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 218
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nc:I

    .line 219
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nextnonce:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nonce:Ljava/lang/String;

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/security/HttpDigestMd5Authentication;->nc:I

    goto :goto_0
.end method
