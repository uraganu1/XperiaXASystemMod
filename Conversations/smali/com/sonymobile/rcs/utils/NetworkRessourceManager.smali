.class public Lcom/sonymobile/rcs/utils/NetworkRessourceManager;
.super Ljava/lang/Object;
.source "NetworkRessourceManager.java"


# static fields
.field public static final DEFAULT_LOCAL_MSRP_PORT_BASE:I

.field public static final DEFAULT_LOCAL_RTP_PORT_BASE:I

.field public static final DEFAULT_LOCAL_SIP_PORT_BASE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipListeningPort()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->DEFAULT_LOCAL_SIP_PORT_BASE:I

    .line 63
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getDefaultRtpPort()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->DEFAULT_LOCAL_RTP_PORT_BASE:I

    .line 69
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getDefaultMsrpPort()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->DEFAULT_LOCAL_MSRP_PORT_BASE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generateLocalMsrpPort()I
    .locals 2

    .prologue
    const-class v1, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;

    monitor-enter v1

    .line 96
    :try_start_0
    sget v0, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->DEFAULT_LOCAL_MSRP_PORT_BASE:I

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalTcpPort(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized generateLocalSipPort()I
    .locals 3

    .prologue
    const-class v1, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;

    monitor-enter v1

    const/16 v0, 0x401

    const v2, 0xffff

    .line 78
    :try_start_0
    invoke-static {v0, v2}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->randInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalUdpPort(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static generateLocalTcpPort(I)I
    .locals 3
    .param p0, "portBase"    # I

    .prologue
    const/4 v1, -0x1

    .line 161
    .local v1, "resp":I
    move v0, p0

    .local v0, "port":I
    :goto_0
    const/4 v2, -0x1

    .line 162
    if-eq v1, v2, :cond_0

    .line 170
    return v1

    .line 163
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->isLocalTcpPortFree(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static generateLocalUdpPort(I)I
    .locals 3
    .param p0, "portBase"    # I

    .prologue
    const/4 v1, -0x1

    .line 120
    .local v1, "resp":I
    move v0, p0

    .local v0, "port":I
    :goto_0
    const/4 v2, -0x1

    .line 121
    if-eq v1, v2, :cond_0

    .line 130
    return v1

    :cond_0
    const/16 v2, 0x13c4

    .line 122
    if-ne v0, v2, :cond_2

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->isLocalUdpPortFree(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    move v1, v0

    goto :goto_0
.end method

.method private static isLocalTcpPortFree(I)Z
    .locals 4
    .param p0, "port"    # I

    .prologue
    .line 181
    const/4 v2, 0x0

    .line 183
    .local v2, "res":Z
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createSocketServerConnection()Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    move-result-object v0

    .line 185
    .local v0, "conn":Lcom/sonymobile/rcs/platform/network/SocketServerConnection;
    invoke-interface {v0, p0}, Lcom/sonymobile/rcs/platform/network/SocketServerConnection;->open(I)V

    .line 186
    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketServerConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v2, 0x1

    .line 191
    .end local v0    # "conn":Lcom/sonymobile/rcs/platform/network/SocketServerConnection;
    :goto_0
    return v2

    .line 190
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLocalUdpPortFree(I)Z
    .locals 4
    .param p0, "port"    # I

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "res":Z
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createDatagramConnection()Lcom/sonymobile/rcs/platform/network/DatagramConnection;

    move-result-object v0

    .line 144
    .local v0, "conn":Lcom/sonymobile/rcs/platform/network/DatagramConnection;
    invoke-interface {v0, p0}, Lcom/sonymobile/rcs/platform/network/DatagramConnection;->open(I)V

    .line 145
    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/DatagramConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v2, 0x1

    .line 150
    .end local v0    # "conn":Lcom/sonymobile/rcs/platform/network/DatagramConnection;
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static randInt(II)I
    .locals 3
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 107
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 108
    .local v0, "rand":Ljava/util/Random;
    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int v1, v2, p0

    .line 109
    .local v1, "randomNum":I
    return v1
.end method
