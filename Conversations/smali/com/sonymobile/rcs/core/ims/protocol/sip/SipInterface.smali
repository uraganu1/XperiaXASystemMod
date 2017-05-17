.class public Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;
.super Ljava/lang/Object;
.source "SipInterface.java"

# interfaces
.implements Ljavax2/sip/SipListener;


# static fields
.field private static sipTraceEnabled:Z


# instance fields
.field private defaultProtocol:Ljava/lang/String;

.field private defaultRoutePath:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSipProvider:Ljavax2/sip/SipProvider;

.field private instanceId:Ljava/lang/String;

.field private keepAliveManager:Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private listeningPort:I

.field private localIpAddress:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private outboundProxyAddr:Ljava/lang/String;

.field private outboundProxyPort:I

.field private publicGruu:Ljava/lang/String;

.field private serviceRoutePath:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sipProviders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljavax2/sip/SipProvider;",
            ">;"
        }
    .end annotation
.end field

.field private sipStack:Ljavax2/sip/SipStack;

.field private sipTraceFile:Ljava/lang/String;

.field private tempGruu:Ljava/lang/String;

.field private timerT1:I

.field private timerT2:I

.field private timerT4:I

.field private transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSipTraceActivated()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 15
    .param p1, "localIpAddress"    # Ljava/lang/String;
    .param p2, "proxyAddr"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "defaultProtocol"    # Ljava/lang/String;
    .param p5, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipTraceFile()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceFile:Ljava/lang/String;

    .line 129
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-direct {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;-><init>()V

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    .line 134
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeners:Ljava/util/Vector;

    .line 149
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    .line 154
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    invoke-direct {v12, p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;)V

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->keepAliveManager:Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    const/4 v12, 0x0

    .line 159
    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->publicGruu:Ljava/lang/String;

    const/4 v12, 0x0

    .line 164
    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->tempGruu:Ljava/lang/String;

    const/4 v12, 0x0

    .line 169
    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->instanceId:Ljava/lang/String;

    const/16 v12, 0x1f4

    .line 174
    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    const/16 v12, 0xfa0

    .line 179
    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    const/16 v12, 0x1388

    .line 184
    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v12

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 203
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->localIpAddress:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultProtocol:Ljava/lang/String;

    .line 205
    move/from16 v0, p3

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    .line 206
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyAddr:Ljava/lang/String;

    .line 207
    move/from16 v0, p3

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyPort:I

    .line 209
    if-eqz p5, :cond_1

    .line 216
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalSipPort()I

    move-result v12

    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    .line 219
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultRoutePath:Ljava/util/Vector;

    .line 220
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultRoutePath:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultRoute()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 223
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    .line 224
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultRoute()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 228
    :try_start_0
    invoke-static {}, Ljavax2/sip/SipFactory;->getInstance()Ljavax2/sip/SipFactory;

    move-result-object v5

    .line 229
    .local v5, "sipFactory":Ljavax2/sip/SipFactory;
    invoke-virtual {v5}, Ljavax2/sip/SipFactory;->resetFactory()V

    .line 230
    invoke-virtual {v5}, Ljavax2/sip/SipFactory;->createHeaderFactory()Ljavax2/sip/header/HeaderFactory;

    move-result-object v12

    sput-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    .line 231
    invoke-virtual {v5}, Ljavax2/sip/SipFactory;->createAddressFactory()Ljavax2/sip/address/AddressFactory;

    move-result-object v12

    sput-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    .line 232
    invoke-virtual {v5}, Ljavax2/sip/SipFactory;->createMessageFactory()Ljavax2/sip/message/MessageFactory;

    move-result-object v12

    sput-object v12, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->MSG_FACTORY:Ljavax2/sip/message/MessageFactory;

    .line 235
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .local v4, "properties":Ljava/util/Properties;
    const-string/jumbo v12, "javax2.sip.STACK_NAME"

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v4, v12, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "gov2.nist.javax2.sip.THREAD_POOL_SIZE"

    const-string/jumbo v13, "1"

    .line 237
    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "javax2.sip.OUTBOUND_PROXY"

    .line 245
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyAddr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyPort:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    sget-boolean v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v12, :cond_2

    :cond_0
    :goto_1
    const-string/jumbo v12, "TLS"

    .line 264
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 278
    :goto_2
    invoke-virtual {v5, v4}, Ljavax2/sip/SipFactory;->createSipStack(Ljava/util/Properties;)Ljavax2/sip/SipStack;

    move-result-object v12

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    .line 281
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    iget v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    const-string/jumbo v14, "UDP"

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13, v14}, Ljavax2/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v10

    .line 283
    .local v10, "udp":Ljavax2/sip/ListeningPoint;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v12, v10}, Ljavax2/sip/SipStack;->createSipProvider(Ljavax2/sip/ListeningPoint;)Ljavax2/sip/SipProvider;

    move-result-object v11

    .line 284
    .local v11, "udpSipProvider":Ljavax2/sip/SipProvider;
    invoke-interface {v11, p0}, Ljavax2/sip/SipProvider;->addSipListener(Ljavax2/sip/SipListener;)V

    .line 285
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    invoke-virtual {v12, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v12, "TLS"

    .line 288
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "TCP"

    .line 298
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 310
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    iget v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    const-string/jumbo v14, "TCP"

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13, v14}, Ljavax2/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v6

    .line 312
    .local v6, "tcp":Ljavax2/sip/ListeningPoint;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v12, v6}, Ljavax2/sip/SipStack;->createSipProvider(Ljavax2/sip/ListeningPoint;)Ljavax2/sip/SipProvider;

    move-result-object v7

    .line 313
    .local v7, "tcpSipProvider":Ljavax2/sip/SipProvider;
    invoke-interface {v7, p0}, Ljavax2/sip/SipProvider;->addSipListener(Ljavax2/sip/SipListener;)V

    .line 314
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    invoke-virtual {v12, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 317
    iput-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    .line 320
    .end local v6    # "tcp":Ljavax2/sip/ListeningPoint;
    .end local v7    # "tcpSipProvider":Ljavax2/sip/SipProvider;
    :goto_3
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_7

    .line 325
    :goto_4
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v12}, Ljavax2/sip/SipStack;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_9

    .line 335
    :goto_5
    return-void

    .line 210
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "sipFactory":Ljavax2/sip/SipFactory;
    .end local v10    # "udp":Ljavax2/sip/ListeningPoint;
    .end local v11    # "udpSipProvider":Ljavax2/sip/SipProvider;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipTimerT1()I

    move-result v12

    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    .line 211
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipTimerT2()I

    move-result v12

    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    .line 212
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipTimerT4()I

    move-result v12

    iput v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    goto/16 :goto_0

    .line 249
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "sipFactory":Ljavax2/sip/SipFactory;
    :cond_2
    const/4 v1, 0x1

    .line 252
    .local v1, "cleanLog":Z
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceFile:Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, "fs":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 256
    .end local v1    # "cleanLog":Z
    :goto_6
    if-eqz v1, :cond_0

    const-string/jumbo v12, "gov2.nist.javax2.sip.TRACE_LEVEL"

    const-string/jumbo v13, "DEBUG"

    .line 257
    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "gov2.nist.javax2.sip.SERVER_LOG"

    .line 258
    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceFile:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "gov2.nist.javax2.sip.LOG_MESSAGE_CONTENT"

    const-string/jumbo v13, "true"

    .line 259
    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "gov2.nist.javax2.sip.LOG_STACK_TRACE_ON_MESSAGE_SEND"

    const-string/jumbo v13, "true"

    .line 260
    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 331
    .end local v3    # "fs":Ljava/io/File;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "sipFactory":Ljavax2/sip/SipFactory;
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_8

    .line 330
    :goto_7
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v13, "Can\'t create the SIP stack"

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 254
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cleanLog":Z
    .restart local v3    # "fs":Ljava/io/File;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "sipFactory":Ljavax2/sip/SipFactory;
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .local v1, "cleanLog":Z
    goto :goto_6

    .end local v1    # "cleanLog":Z
    .end local v3    # "fs":Ljava/io/File;
    :cond_4
    const-string/jumbo v12, "gov2.nist.javax2.sip.TLS_CLIENT_PROTOCOLS"

    const-string/jumbo v13, "SSLv3, TLSv1"

    .line 266
    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "javax2.net.ssl.keyStoreType"

    .line 267
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystoreType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "javax2.net.ssl.keyStore"

    .line 269
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "javax2.net.ssl.keyStorePassword"

    .line 271
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePassword()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v12, "javax2.net.ssl.trustStore"

    .line 273
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getKeystorePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 290
    .restart local v10    # "udp":Ljavax2/sip/ListeningPoint;
    .restart local v11    # "udpSipProvider":Ljavax2/sip/SipProvider;
    :cond_5
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    iget v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    const-string/jumbo v14, "TLS"

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13, v14}, Ljavax2/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v8

    .line 292
    .local v8, "tls":Ljavax2/sip/ListeningPoint;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v12, v8}, Ljavax2/sip/SipStack;->createSipProvider(Ljavax2/sip/ListeningPoint;)Ljavax2/sip/SipProvider;

    move-result-object v9

    .line 293
    .local v9, "tlsSipProvider":Ljavax2/sip/SipProvider;
    invoke-interface {v9, p0}, Ljavax2/sip/SipProvider;->addSipListener(Ljavax2/sip/SipListener;)V

    .line 294
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    invoke-virtual {v12, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 297
    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    goto/16 :goto_3

    .line 300
    .end local v8    # "tls":Ljavax2/sip/ListeningPoint;
    .end local v9    # "tlsSipProvider":Ljavax2/sip/SipProvider;
    :cond_6
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    iget v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    const-string/jumbo v14, "TCP"

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13, v14}, Ljavax2/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v6

    .line 302
    .restart local v6    # "tcp":Ljavax2/sip/ListeningPoint;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v12, v6}, Ljavax2/sip/SipStack;->createSipProvider(Ljavax2/sip/ListeningPoint;)Ljavax2/sip/SipProvider;

    move-result-object v7

    .line 303
    .restart local v7    # "tcpSipProvider":Ljavax2/sip/SipProvider;
    invoke-interface {v7, p0}, Ljavax2/sip/SipProvider;->addSipListener(Ljavax2/sip/SipListener;)V

    .line 304
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    invoke-virtual {v12, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 307
    iput-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    goto/16 :goto_3

    .line 321
    .end local v6    # "tcp":Ljavax2/sip/ListeningPoint;
    .end local v7    # "tcpSipProvider":Ljavax2/sip/SipProvider;
    :cond_7
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Default SIP provider is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 328
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "sipFactory":Ljavax2/sip/SipFactory;
    .end local v10    # "udp":Ljavax2/sip/ListeningPoint;
    .end local v11    # "udpSipProvider":Ljavax2/sip/SipProvider;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_8
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "SIP stack initialization has failed"

    invoke-virtual {v12, v13, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 333
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "sipFactory":Ljavax2/sip/SipFactory;
    .restart local v10    # "udp":Ljavax2/sip/ListeningPoint;
    .restart local v11    # "udpSipProvider":Ljavax2/sip/SipProvider;
    :cond_9
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SIP stack started at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public addSipEventListener(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 616
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Add a SIP listener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    .line 343
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->keepAliveManager:Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->stop()V

    .line 344
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->keepAliveManager:Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->stopPingKeepAliveTask()V

    .line 346
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    const/4 v1, 0x0

    .line 349
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v3}, Ljavax2/sip/SipStack;->stop()V

    .line 358
    invoke-static {}, Ljavax2/sip/SipFactory;->getInstance()Ljavax2/sip/SipFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax2/sip/SipFactory;->resetFactory()V

    .line 364
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 350
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/SipProvider;

    .line 351
    .local v2, "sipProvider":Ljavax2/sip/SipProvider;
    invoke-interface {v2, p0}, Ljavax2/sip/SipProvider;->removeSipListener(Ljavax2/sip/SipListener;)V

    .line 352
    invoke-interface {v2}, Ljavax2/sip/SipProvider;->removeListeningPoints()V

    .line 353
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipStack:Ljavax2/sip/SipStack;

    invoke-interface {v3, v2}, Ljavax2/sip/SipStack;->deleteSipProvider(Ljavax2/sip/SipProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "i":I
    .end local v2    # "sipProvider":Ljavax2/sip/SipProvider;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t stop SIP stack correctly"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public generateCallId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->localIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Ljavax2/sip/header/ContactHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->publicGruu:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 539
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->instanceId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v1

    .line 547
    .local v1, "contactHeader":Ljavax2/sip/header/ContactHeader;
    :goto_0
    return-object v1

    .line 536
    .end local v1    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->publicGruu:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljavax2/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax2/sip/address/SipURI;

    move-result-object v2

    .line 537
    .local v2, "contactURI":Ljavax2/sip/address/SipURI;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-interface {v3, v2}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljavax2/sip/address/URI;)Ljavax2/sip/address/Address;

    move-result-object v0

    .line 538
    .local v0, "contactAddress":Ljavax2/sip/address/Address;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-interface {v3, v0}, Ljavax2/sip/header/HeaderFactory;->createContactHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/ContactHeader;

    move-result-object v1

    .restart local v1    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    goto :goto_0

    .line 541
    .end local v0    # "contactAddress":Ljavax2/sip/address/Address;
    .end local v1    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    .end local v2    # "contactURI":Ljavax2/sip/address/SipURI;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v1

    .restart local v1    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    const-string/jumbo v3, "+sip.instance"

    .line 542
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljavax2/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultRoute()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyAddr:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/IpAddressUtils;->isIPv6(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "<sip:%s:%s;transport=%s;lr>"

    .line 561
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyAddr:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getProxyProtocol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "defaultRoute":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "defaultRoute":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "<sip:[%s]:%s;transport=%s;lr>"

    .line 558
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyAddr:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getProxyProtocol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "defaultRoute":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultRoutePath()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultRoutePath:Ljava/util/Vector;

    return-object v0
.end method

.method public getDefaultSipProvider()Ljavax2/sip/SipProvider;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->keepAliveManager:Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    return-object v0
.end method

.method public getLocalContact()Ljavax2/sip/header/ContactHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 514
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->localIpAddress:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljavax2/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/address/SipURI;

    move-result-object v2

    .line 515
    .local v2, "contactURI":Ljavax2/sip/address/SipURI;
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    invoke-interface {v2, v3}, Ljavax2/sip/address/SipURI;->setPort(I)V

    const-string/jumbo v3, "transport"

    .line 516
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultProtocol:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljavax2/sip/address/SipURI;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-interface {v3, v2}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljavax2/sip/address/URI;)Ljavax2/sip/address/Address;

    move-result-object v0

    .line 520
    .local v0, "contactAddress":Ljavax2/sip/address/Address;
    sget-object v3, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-interface {v3, v0}, Ljavax2/sip/header/HeaderFactory;->createContactHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/ContactHeader;

    move-result-object v1

    .line 522
    .local v1, "contactHeader":Ljavax2/sip/header/ContactHeader;
    return-object v1
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->localIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOutboundProxyAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getOutboundProxyPort()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->outboundProxyPort:I

    return v0
.end method

.method public getProxyProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicGruu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->publicGruu:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceRoutePath()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    return-object v0
.end method

.method public getViaHeaders()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljavax2/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, "viaHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax2/sip/header/ViaHeader;>;"
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->localIpAddress:Ljava/lang/String;

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeningPort:I

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getProxyProtocol()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax2/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ViaHeader;

    move-result-object v0

    .line 493
    .local v0, "via":Ljavax2/sip/header/ViaHeader;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-object v1
.end method

.method public notifyTransactionContext(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)V
    .locals 4
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    .line 647
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .line 648
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->removeTransactionContext(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->responseReceived(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Callback object found for transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public processDialogTerminated(Ljavax2/sip/DialogTerminatedEvent;)V
    .locals 2
    .param p1, "dialogTerminatedEvent"    # Ljavax2/sip/DialogTerminatedEvent;

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Dialog terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processIOException(Ljavax2/sip/IOExceptionEvent;)V
    .locals 4
    .param p1, "exceptionEvent"    # Ljavax2/sip/IOExceptionEvent;

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1056
    :goto_0
    instance-of v1, p1, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    if-nez v1, :cond_3

    .line 1060
    :cond_0
    instance-of v1, p1, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    if-nez v1, :cond_4

    .line 1089
    .end local p1    # "exceptionEvent":Ljavax2/sip/IOExceptionEvent;
    :cond_1
    :goto_1
    return-void

    .line 1054
    .restart local p1    # "exceptionEvent":Ljavax2/sip/IOExceptionEvent;
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IO Exception on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax2/sip/IOExceptionEvent;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " transport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_3
    sget-object v2, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->KeepAliveTimeout:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    move-object v1, p1

    check-cast v1, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/IOExceptionEventExt;->getReason()Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->processKeepAliveTimeout()V

    goto :goto_1

    .line 1060
    :cond_4
    sget-object v1, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->TCPSocketFailure:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    check-cast p1, Lgov2/nist/javax2/sip/IOExceptionEventExt;

    .end local p1    # "exceptionEvent":Ljavax2/sip/IOExceptionEvent;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/IOExceptionEventExt;->getReason()Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1064
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1066
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Re-Register : TCP SocketFailure"

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    .line 1070
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1074
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_6

    :goto_3
    const-string/jumbo v1, "Re-Register : TCP SocketFailure"

    .line 1083
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1071
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationTerminated()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1084
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_7

    :goto_4
    const-string/jumbo v1, "Re-Register : TCP SocketFailure"

    .line 1083
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1075
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->initStackAndRegister()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1084
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "Re-Register : TCP SocketFailure"

    .line 1083
    invoke-static {v2}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    throw v1

    .line 1080
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unable to register with SIP Provider after socket failure "

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public processRequest(Ljavax2/sip/RequestEvent;)V
    .locals 10
    .param p1, "requestEvent"    # Ljavax2/sip/RequestEvent;

    .prologue
    .line 1128
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1131
    :goto_0
    sget-boolean v7, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v7, :cond_1

    .line 1137
    :goto_1
    invoke-virtual {p1}, Ljavax2/sip/RequestEvent;->getServerTransaction()Ljavax2/sip/ServerTransaction;

    move-result-object v5

    .line 1138
    .local v5, "transaction":Ljavax2/sip/ServerTransaction;
    if-eqz v5, :cond_2

    .line 1152
    :goto_2
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    invoke-virtual {p1}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;-><init>(Ljavax2/sip/message/Request;)V

    .line 1153
    .local v3, "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 1155
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ACK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v1, 0x0

    .line 1163
    .local v1, "i":I
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeners:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_5

    .line 1170
    return-void

    .line 1129
    .end local v1    # "i":I
    .end local v3    # "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v5    # "transaction":Ljavax2/sip/ServerTransaction;
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<<< Receive SIP "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v9

    invoke-interface {v9}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<<< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "-----------------------------------------------------------------------------"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1141
    .restart local v5    # "transaction":Ljavax2/sip/ServerTransaction;
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljavax2/sip/RequestEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax2/sip/SipProvider;

    .line 1142
    .local v4, "srcSipProvider":Ljavax2/sip/SipProvider;
    invoke-virtual {p1}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v7

    invoke-interface {v4, v7}, Ljavax2/sip/SipProvider;->getNewServerTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ServerTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    .line 1148
    .end local v4    # "srcSipProvider":Ljavax2/sip/SipProvider;
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1147
    :goto_4
    return-void

    .line 1145
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Unable to create a new server transaction for an incoming request"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 1157
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_4
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v6

    .line 1158
    .local v6, "transactionId":Ljava/lang/String;
    invoke-virtual {p0, v6, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->notifyTransactionContext(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)V

    .line 1159
    return-void

    .line 1164
    .end local v6    # "transactionId":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1167
    :goto_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->listeners:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;

    .line 1168
    .local v2, "listener":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;
    invoke-interface {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;->receiveSipRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1165
    .end local v2    # "listener":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Notify a SIP listener"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public processResponse(Ljavax2/sip/ResponseEvent;)V
    .locals 6
    .param p1, "responseEvent"    # Ljavax2/sip/ResponseEvent;

    .prologue
    .line 1179
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1183
    :goto_0
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v3, :cond_1

    .line 1189
    :goto_1
    invoke-virtual {p1}, Ljavax2/sip/ResponseEvent;->getClientTransaction()Ljavax2/sip/ClientTransaction;

    move-result-object v1

    .line 1190
    .local v1, "transaction":Ljavax2/sip/ClientTransaction;
    if-eqz v1, :cond_2

    .line 1197
    invoke-virtual {p1}, Ljavax2/sip/ResponseEvent;->getResponse()Ljavax2/sip/message/Response;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_4

    .line 1207
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1211
    :goto_2
    return-void

    .line 1180
    .end local v1    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<<< Receive SIP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljavax2/sip/ResponseEvent;->getResponse()Ljavax2/sip/message/Response;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljavax2/sip/ResponseEvent;->getResponse()Ljavax2/sip/message/Response;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1185
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "-----------------------------------------------------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1191
    .restart local v1    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1194
    :goto_3
    return-void

    .line 1192
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "No transaction exist for this response: by-pass it"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 1199
    :cond_4
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    invoke-virtual {p1}, Ljavax2/sip/ResponseEvent;->getResponse()Ljavax2/sip/message/Response;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;-><init>(Ljavax2/sip/message/Response;)V

    .line 1200
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 1204
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, "transactionId":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->notifyTransactionContext(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)V

    goto :goto_2

    .line 1208
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v2    # "transactionId":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "By pass provisional response"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public processTimeout(Ljavax2/sip/TimeoutEvent;)V
    .locals 6
    .param p1, "timeoutEvent"    # Ljavax2/sip/TimeoutEvent;

    .prologue
    const/4 v5, 0x0

    .line 1220
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    :goto_0
    invoke-virtual {p1}, Ljavax2/sip/TimeoutEvent;->isServerTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1231
    invoke-virtual {p1}, Ljavax2/sip/TimeoutEvent;->getClientTransaction()Ljavax2/sip/ClientTransaction;

    move-result-object v0

    .line 1232
    .local v0, "transaction":Ljavax2/sip/ClientTransaction;
    if-eqz v0, :cond_3

    .line 1240
    invoke-interface {v0}, Ljavax2/sip/ClientTransaction;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Ljavax2/sip/message/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    .local v1, "transactionId":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->notifyTransactionContext(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)V

    .line 1243
    return-void

    .line 1221
    .end local v0    # "transaction":Ljavax2/sip/ClientTransaction;
    .end local v1    # "transactionId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transaction timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljavax2/sip/TimeoutEvent;->getTimeout()Ljavax2/sip/Timeout;

    move-result-object v4

    invoke-virtual {v4}, Ljavax2/sip/Timeout;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1228
    :goto_1
    return-void

    .line 1226
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unexpected timeout for a server transaction: should never arrives"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 1233
    .restart local v0    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1236
    :goto_2
    return-void

    .line 1234
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "No transaction exist for this transaction: by-pass it"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public processTransactionTerminated(Ljavax2/sip/TransactionTerminatedEvent;)V
    .locals 2
    .param p1, "transactionTerminatedEvent"    # Ljavax2/sip/TransactionTerminatedEvent;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Transaction terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseWakeLock(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->releaseWakeLock(Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method public declared-synchronized removeTransactionContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 637
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendSipAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 5
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 791
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 794
    .local v0, "ack":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 797
    :goto_0
    sget-boolean v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v2, :cond_1

    .line 803
    :goto_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax2/sip/Dialog;->sendAck(Ljavax2/sip/message/Request;)V

    .line 810
    return-void

    .line 795
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, ">>> Send SIP ACK"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    .end local v0    # "ack":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 808
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v3, "Can\'t send SIP message"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ack":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 799
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "-----------------------------------------------------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 806
    .end local v0    # "ack":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send SIP message"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public sendSipBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 6
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 864
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 867
    .local v0, "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 872
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax2/sip/SipProvider;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v2

    .line 874
    .local v2, "transaction":Ljavax2/sip/ClientTransaction;
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    invoke-interface {v2, v3, v4, v5}, Ljavax2/sip/ClientTransaction;->setRetransmitTimers(III)V

    .line 877
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 880
    :goto_1
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v3, :cond_2

    .line 884
    :goto_2
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v3

    invoke-interface {v3, v2}, Ljavax2/sip/Dialog;->sendRequest(Ljavax2/sip/ClientTransaction;)V

    .line 891
    return-void

    .line 868
    .end local v2    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 890
    .end local v0    # "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_0
    move-exception v1

    .line 886
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 889
    :goto_3
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t send SIP message"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 878
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v2    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, ">>> Send SIP BYE"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 881
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ">>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 882
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "-----------------------------------------------------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 887
    .end local v0    # "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "transaction":Ljavax2/sip/ClientTransaction;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t send SIP message"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public sendSipByeAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 8
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 903
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 906
    .local v0, "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 911
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax2/sip/SipProvider;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v4

    .line 913
    .local v4, "transaction":Ljavax2/sip/ClientTransaction;
    iget v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    iget v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    iget v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    invoke-interface {v4, v5, v6, v7}, Ljavax2/sip/ClientTransaction;->setRetransmitTimers(III)V

    .line 914
    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->setStackTransaction(Ljavax2/sip/Transaction;)V

    .line 917
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-direct {v1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;-><init>(Ljavax2/sip/Transaction;)V

    .line 918
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-virtual {v5, v3, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 925
    :goto_1
    sget-boolean v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v5, :cond_2

    .line 929
    :goto_2
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v5

    invoke-interface {v5, v4}, Ljavax2/sip/Dialog;->sendRequest(Ljavax2/sip/ClientTransaction;)V

    .line 930
    return-object v1

    .line 907
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    .end local v0    # "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_0
    move-exception v2

    .line 932
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 935
    :goto_3
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v6, "Can\'t send SIP message"

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 923
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, ">>> Send SIP BYE"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 926
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ">>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 927
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "-----------------------------------------------------------------------------"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 933
    .end local v0    # "bye":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "transaction":Ljavax2/sip/ClientTransaction;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t send SIP message"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public sendSipCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 6
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v3

    instance-of v3, v3, Ljavax2/sip/ServerTransaction;

    if-nez v3, :cond_0

    .line 826
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 829
    .local v0, "cancel":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 834
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax2/sip/SipProvider;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v2

    .line 836
    .local v2, "transaction":Ljavax2/sip/ClientTransaction;
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    iget v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    invoke-interface {v2, v3, v4, v5}, Ljavax2/sip/ClientTransaction;->setRetransmitTimers(III)V

    .line 839
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 842
    :goto_1
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v3, :cond_3

    .line 846
    :goto_2
    invoke-interface {v2}, Ljavax2/sip/ClientTransaction;->sendRequest()V

    .line 853
    return-void

    .line 822
    .end local v0    # "cancel":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_0
    return-void

    .line 830
    .restart local v0    # "cancel":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    .end local v0    # "cancel":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :catch_0
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 851
    :goto_3
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v4, "Can\'t send SIP message"

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 840
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cancel":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v2    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, ">>> Send SIP CANCEL"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 843
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ">>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "-----------------------------------------------------------------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 849
    .end local v0    # "cancel":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "transaction":Ljavax2/sip/ClientTransaction;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t send SIP message"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 12
    .param p1, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 666
    :try_start_0
    instance-of v8, p1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    if-nez v8, :cond_0

    .line 703
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-object v5, v0

    .line 706
    .local v5, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v7

    check-cast v7, Ljavax2/sip/ServerTransaction;

    .line 707
    .local v7, "transaction":Ljavax2/sip/ServerTransaction;
    if-eqz v7, :cond_5

    .line 717
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-direct {v1, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;-><init>(Ljavax2/sip/Transaction;)V

    .line 718
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-virtual {v8, v3, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_7

    .line 725
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_8

    .line 728
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSipTraceActivated()Z

    move-result v8

    if-nez v8, :cond_9

    .line 732
    :goto_2
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax2/sip/ServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 736
    return-object v1

    .line 668
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v7    # "transaction":Ljavax2/sip/ServerTransaction;
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-object v4, v0

    .line 671
    .local v4, "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v6

    check-cast v6, Ljavax2/sip/ClientTransaction;

    .line 672
    .local v6, "transaction":Ljavax2/sip/ClientTransaction;
    if-eqz v6, :cond_1

    .line 681
    :goto_3
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-direct {v1, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;-><init>(Ljavax2/sip/Transaction;)V

    .line 682
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v3

    .line 683
    .restart local v3    # "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-virtual {v8, v3, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 689
    :goto_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_3

    .line 692
    :goto_5
    sget-boolean v8, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v8, :cond_4

    .line 696
    :goto_6
    invoke-interface {v6}, Ljavax2/sip/ClientTransaction;->sendRequest()V

    .line 700
    return-object v1

    .line 674
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultSipProvider()Ljavax2/sip/SipProvider;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavax2/sip/SipProvider;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v6

    .line 676
    iget v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    iget v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    iget v10, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    invoke-interface {v6, v8, v9, v10}, Ljavax2/sip/ClientTransaction;->setRetransmitTimers(III)V

    .line 677
    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->setStackTransaction(Ljavax2/sip/Transaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 736
    .end local v4    # "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v6    # "transaction":Ljavax2/sip/ClientTransaction;
    :catch_0
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_a

    .line 742
    :goto_7
    new-instance v8, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v9, "Can\'t send SIP message"

    invoke-direct {v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 685
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .restart local v6    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Create a transaction context "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 690
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ">>> Send SIP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 693
    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ">>> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "-----------------------------------------------------------------------------"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 709
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v6    # "transaction":Ljavax2/sip/ClientTransaction;
    .restart local v5    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .restart local v7    # "transaction":Ljavax2/sip/ServerTransaction;
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_6

    .line 713
    :goto_8
    return-object v11

    .line 710
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No transaction exist for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": the response can\'t be sent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_8

    .line 721
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v3    # "id":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Create a transaction context "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ">>> Send SIP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " response"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 729
    :cond_9
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ">>> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 730
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "-----------------------------------------------------------------------------"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 740
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v7    # "transaction":Ljavax2/sip/ServerTransaction;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t send SIP message"

    invoke-virtual {v8, v9, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method

.method public sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackTransaction()Ljavax2/sip/Transaction;

    move-result-object v1

    check-cast v1, Ljavax2/sip/ServerTransaction;

    .line 756
    .local v1, "transaction":Ljavax2/sip/ServerTransaction;
    if-eqz v1, :cond_0

    .line 766
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 769
    :goto_0
    sget-boolean v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v2, :cond_3

    .line 773
    :goto_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax2/sip/ServerTransaction;->sendResponse(Ljavax2/sip/message/Response;)V

    .line 780
    return-void

    .line 758
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v3, "No transaction found"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v1    # "transaction":Ljavax2/sip/ServerTransaction;
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 778
    :goto_3
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v3, "Can\'t send SIP message"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "transaction":Ljavax2/sip/ServerTransaction;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No transaction exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": the response can\'t be sent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> Send SIP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 771
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "-----------------------------------------------------------------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 776
    .end local v1    # "transaction":Ljavax2/sip/ServerTransaction;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send SIP message"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public sendSubsequentRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .locals 7
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1001
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1006
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->defaultSipProvider:Ljavax2/sip/SipProvider;

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax2/sip/SipProvider;->getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;

    move-result-object v3

    .line 1008
    .local v3, "transaction":Ljavax2/sip/ClientTransaction;
    iget v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT1:I

    iget v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT2:I

    iget v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->timerT4:I

    invoke-interface {v3, v4, v5, v6}, Ljavax2/sip/ClientTransaction;->setRetransmitTimers(III)V

    .line 1011
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1014
    :goto_1
    sget-boolean v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->sipTraceEnabled:Z

    if-nez v4, :cond_2

    .line 1018
    :goto_2
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getStackDialog()Ljavax2/sip/Dialog;

    move-result-object v4

    invoke-interface {v4, v3}, Ljavax2/sip/Dialog;->sendRequest(Ljavax2/sip/ClientTransaction;)V

    .line 1021
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    invoke-direct {v0, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;-><init>(Ljavax2/sip/Transaction;)V

    .line 1022
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->transactions:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;

    invoke-virtual {v4, v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    return-object v0

    .line 1002
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1027
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1032
    :goto_3
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v5, "Can\'t send SIP message"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1012
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "transaction":Ljavax2/sip/ClientTransaction;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">>> Send SIP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1015
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "-----------------------------------------------------------------------------"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1030
    .end local v3    # "transaction":Ljavax2/sip/ClientTransaction;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t send SIP message"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->instanceId:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setPublicGruu(Ljava/lang/String;)V
    .locals 0
    .param p1, "gruu"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->publicGruu:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setServiceRoutePath(Ljava/util/ListIterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljavax2/sip/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "routes":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 593
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultRoute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 594
    if-nez p1, :cond_1

    .line 604
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 598
    .local v0, "route":Ljavax2/sip/header/ExtensionHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "rt":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    .end local v0    # "route":Ljavax2/sip/header/ExtensionHeader;
    .end local v1    # "rt":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 600
    .restart local v0    # "route":Ljavax2/sip/header/ExtensionHeader;
    .restart local v1    # "rt":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->serviceRoutePath:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setTemporaryGruu(Ljava/lang/String;)V
    .locals 0
    .param p1, "gruu"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->tempGruu:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public startKeepAliveTimer()V
    .locals 2

    .prologue
    .line 1101
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1118
    :goto_0
    return-void

    .line 1101
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->isRegistering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getKeepAliveManager()Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->start()V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Cannot start keep alive timer now"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
