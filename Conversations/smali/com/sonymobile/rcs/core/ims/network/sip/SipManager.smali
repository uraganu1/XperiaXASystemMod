.class public Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;
.super Ljava/lang/Object;
.source "SipManager.java"


# static fields
.field public static TIMEOUT:I


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

.field private sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x1e

    .line 54
    sput v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 77
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .line 79
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "SIP manager started"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized closeStack()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 151
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->close()V

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 158
    return-void

    :cond_1
    monitor-exit p0

    .line 146
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t close SIP stack properly"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    return-object v0
.end method

.method public declared-synchronized initStack(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p1, "localAddr"    # Ljava/lang/String;
    .param p2, "proxyAddr"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->closeStack()V

    .line 137
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 138
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendSipAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 2
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v1, "Stack not initialized"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSipAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 295
    return-void
.end method

.method public sendSipBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 2
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v1, "Stack not initialized"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSipBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 309
    return-void
.end method

.method public sendSipByeAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 3
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v2, "Can\'t send SIP BYE"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSipByeAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 321
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    sget v1, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->TIMEOUT:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->waitResponse(I)V

    .line 325
    return-void
.end method

.method public sendSipCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 2
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v1, "Stack not initialized"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSipCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 339
    return-void
.end method

.method public sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 1
    .param p1, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 168
    sget v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->TIMEOUT:I

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    return-object v0
.end method

.method public sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 15
    .param p1, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v12, :cond_0

    .line 265
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v13, "Stack not initialized"

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 182
    :cond_0
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v1

    .line 185
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->waitResponse(I)V

    .line 188
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    if-nez v12, :cond_3

    .line 204
    :cond_1
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v4

    .line 206
    .local v4, "keepAliveManager":Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    if-nez v12, :cond_4

    .line 263
    .end local p1    # "message":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    :cond_2
    :goto_0
    return-object v1

    .end local v4    # "keepAliveManager":Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;
    .restart local p1    # "message":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    :cond_3
    move-object/from16 v12, p1

    .line 188
    check-cast v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "REGISTER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v12, p1

    check-cast v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "REFER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v12

    const-string/jumbo v13, "Warning"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v11

    check-cast v11, Ljavax2/sip/header/WarningHeader;

    .line 195
    .local v11, "warn":Ljavax2/sip/header/WarningHeader;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v12

    const/16 v13, 0x193

    if-ne v12, v13, :cond_1

    if-nez v11, :cond_1

    .line 197
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->restart()V

    .line 200
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v13, "Not registered"

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 206
    .end local v11    # "warn":Ljavax2/sip/header/WarningHeader;
    .restart local v4    # "keepAliveManager":Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;
    :cond_4
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 207
    check-cast p1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .end local p1    # "message":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "method":Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    const-string/jumbo v12, "INVITE"

    .line 209
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_5
    const/4 v10, -0x1

    .line 213
    .local v10, "viaKeep":I
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getViaHeaders()Ljava/util/ListIterator;

    move-result-object v3

    .line 214
    .local v3, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/ViaHeader;>;"
    if-eqz v3, :cond_2

    .line 215
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax2/sip/header/ViaHeader;

    .local v8, "respViaHeader":Ljavax2/sip/header/ViaHeader;
    const-string/jumbo v12, "keep"

    .line 217
    invoke-interface {v8, v12}, Ljavax2/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "keepStr":Ljava/lang/String;
    const-string/jumbo v12, "keep"

    .line 218
    invoke-interface {v8, v12}, Ljavax2/sip/header/ViaHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 220
    .local v5, "keepStatus":Ljava/lang/Boolean;
    if-nez v6, :cond_9

    .line 248
    :cond_6
    :goto_1
    invoke-interface {v8}, Ljavax2/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v9

    .local v9, "transport":Ljava/lang/String;
    const/4 v12, -0x1

    .line 249
    if-ne v10, v12, :cond_c

    .line 255
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setSipKeepAliveEnabled(Z)V

    goto/16 :goto_0

    .end local v3    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/ViaHeader;>;"
    .end local v5    # "keepStatus":Ljava/lang/Boolean;
    .end local v6    # "keepStr":Ljava/lang/String;
    .end local v8    # "respViaHeader":Ljavax2/sip/header/ViaHeader;
    .end local v9    # "transport":Ljava/lang/String;
    .end local v10    # "viaKeep":I
    :cond_8
    const-string/jumbo v12, "REGISTER"

    .line 209
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_0

    .line 223
    .restart local v3    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/ViaHeader;>;"
    .restart local v5    # "keepStatus":Ljava/lang/Boolean;
    .restart local v6    # "keepStr":Ljava/lang/String;
    .restart local v8    # "respViaHeader":Ljavax2/sip/header/ViaHeader;
    .restart local v10    # "viaKeep":I
    :cond_9
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 224
    if-gtz v10, :cond_a

    .line 228
    if-eqz v10, :cond_b

    .line 238
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 239
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Non positive keep value \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 244
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Non-numeric keep value \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_1
    invoke-virtual {v4, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->setPeriod(I)V

    goto :goto_1

    .line 235
    :cond_b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipKeepAlivePeriod()I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->setPeriod(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 249
    .restart local v9    # "transport":Ljava/lang/String;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "TCP"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 253
    :cond_d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setSipKeepAliveEnabled(Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v12, "TLS"

    .line 249
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_2
.end method

.method public sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v1, "Stack not initialized"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 281
    return-void
.end method

.method public sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 1
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 350
    sget v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->TIMEOUT:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    return-object v0
.end method

.method public sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 5
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    if-nez v3, :cond_0

    .line 385
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Stack not initialized"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sipstack:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v1

    .line 367
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v1, p3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->waitResponse(I)V

    .line 370
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    :cond_1
    return-object v1

    .line 370
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v0

    .line 373
    .local v0, "code":I
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v3

    const-string/jumbo v4, "Warning"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/WarningHeader;

    .local v2, "warn":Ljavax2/sip/header/WarningHeader;
    const/16 v3, 0x193

    .line 375
    if-ne v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 377
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->networkInterface:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->restart()V

    .line 380
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Not registered"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
