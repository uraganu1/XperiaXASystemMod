.class public Lgov2/nist/javax2/sip/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static counter:J

.field private static digester:Ljava/security/MessageDigest;

.field private static instance:Lgov2/nist/javax2/sip/Utils;

.field private static rand:Ljava/util/Random;

.field private static signature:Ljava/lang/String;

.field private static final toHex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    sput-wide v2, Lgov2/nist/javax2/sip/Utils;->counter:J

    .line 61
    new-instance v1, Lgov2/nist/javax2/sip/Utils;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/Utils;-><init>()V

    sput-object v1, Lgov2/nist/javax2/sip/Utils;->instance:Lgov2/nist/javax2/sip/Utils;

    const/16 v1, 0x10

    .line 66
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x31

    aput-char v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-char v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x34

    aput-char v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x61

    aput-char v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x62

    aput-char v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x63

    aput-char v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x64

    aput-char v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x65

    aput-char v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x66

    aput-char v3, v1, v2

    sput-object v1, Lgov2/nist/javax2/sip/Utils;->toHex:[C

    :try_start_0
    const-string/jumbo v1, "MD5"

    .line 72
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lgov2/nist/javax2/sip/Utils;->digester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lgov2/nist/javax2/sip/Utils;->rand:Ljava/util/Random;

    .line 77
    sget-object v1, Lgov2/nist/javax2/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lgov2/nist/javax2/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgov2/nist/javax2/sip/Utils;->signature:Ljava/lang/String;

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not intialize Digester "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lgov2/nist/javax2/sip/Utils;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lgov2/nist/javax2/sip/Utils;->instance:Lgov2/nist/javax2/sip/Utils;

    return-object v0
.end method

.method public static getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const-string/jumbo v2, "["

    .line 210
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "index0":I
    if-ne v0, v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v2, "]"

    .line 212
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "index1":I
    if-eq v1, v3, :cond_0

    .line 214
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    const-string/jumbo v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lgov2/nist/javax2/sip/Utils;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 93
    .local v2, "pos":I
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .local v0, "c":[C
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 95
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    sget-object v4, Lgov2/nist/javax2/sip/Utils;->toHex:[C

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 96
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    sget-object v4, Lgov2/nist/javax2/sip/Utils;->toHex:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized generateBranchId()Ljava/lang/String;
    .locals 10

    .prologue
    monitor-enter p0

    .line 169
    :try_start_0
    sget-object v1, Lgov2/nist/javax2/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    sget-wide v6, Lgov2/nist/javax2/sip/Utils;->counter:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    sput-wide v8, Lgov2/nist/javax2/sip/Utils;->counter:J

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 171
    .local v2, "num":J
    sget-object v1, Lgov2/nist/javax2/sip/Utils;->digester:Ljava/security/MessageDigest;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 173
    .local v0, "bid":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "z9hG4bK"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lgov2/nist/javax2/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lgov2/nist/javax2/sip/Utils;->signature:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "bid":[B
    .end local v2    # "num":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized generateTag()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 155
    :try_start_0
    sget-object v0, Lgov2/nist/javax2/sip/Utils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public responseBelongsToUs(Lgov2/nist/javax2/sip/message/SIPResponse;)Z
    .locals 4
    .param p1, "response"    # Lgov2/nist/javax2/sip/message/SIPResponse;

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v1

    .line 179
    .local v1, "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "branch":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v3, Lgov2/nist/javax2/sip/Utils;->signature:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
