.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;
.super Ljava/lang/Object;
.source "ContributionIdGenerator.java"


# static fields
.field private static secretKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->generateSecretKey()[B

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->secretKey:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateSecretKey()[B
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 45
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getDeviceUUID(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v4

    .line 47
    .local v4, "uuid":Ljava/util/UUID;
    if-nez v4, :cond_0

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 55
    .end local v3    # "t":Ljava/lang/String;
    .local v1, "key":[B
    :goto_0
    new-array v2, v8, [B

    .local v2, "secretKey":[B
    const/4 v0, 0x0

    .line 56
    .local v0, "i":I
    :goto_1
    if-lt v0, v8, :cond_1

    .line 63
    return-object v2

    .line 48
    .end local v0    # "i":I
    .end local v1    # "key":[B
    .end local v2    # "secretKey":[B
    :cond_0
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "key":[B
    goto :goto_0

    .line 57
    .restart local v0    # "i":I
    .restart local v2    # "secretKey":[B
    :cond_1
    if-nez v1, :cond_3

    .line 60
    :cond_2
    const/16 v5, 0x30

    aput-byte v5, v2, v0

    .line 56
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_3
    array-length v5, v1

    if-lt v5, v8, :cond_2

    .line 58
    aget-byte v5, v1, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    goto :goto_2
.end method

.method public static declared-synchronized getContributionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "callId"    # Ljava/lang/String;

    .prologue
    const-class v9, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;

    monitor-enter v9

    .line 75
    :try_start_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->secretKey:[B

    const-string/jumbo v10, "HmacSHA1"

    invoke-direct {v7, v8, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v7, "sks":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v8, "HmacSHA1"

    .line 76
    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 77
    .local v6, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 81
    .local v0, "contributionId":[B
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v8, 0x20

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v8, 0x10

    .line 82
    if-lt v4, v8, :cond_1

    .line 90
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "id":Ljava/lang/String;
    monitor-exit v9

    .line 91
    return-object v5

    .line 82
    .end local v5    # "id":Ljava/lang/String;
    :cond_1
    :try_start_1
    array-length v8, v0

    if-ge v4, v8, :cond_0

    .line 83
    aget-byte v8, v0, v4

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2

    .line 87
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_2
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v0    # "contributionId":[B
    .end local v2    # "hex":Ljava/lang/String;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v6    # "mac":Ljavax/crypto/Mac;
    .end local v7    # "sks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    monitor-exit v9

    .line 93
    return-object v8

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
