.class public Lgov2/nist/javax2/sip/stack/UDPMessageChannel;
.super Lgov2/nist/javax2/sip/stack/MessageChannel;
.source "UDPMessageChannel.java"

# interfaces
.implements Lgov2/nist/javax2/sip/parser/ParseExceptionListener;
.implements Ljava/lang/Runnable;
.implements Lgov2/nist/javax2/sip/stack/RawMessageChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/stack/UDPMessageChannel$PingBackTimerTask;
    }
.end annotation


# instance fields
.field private incomingPacket:Ljava/net/DatagramPacket;

.field private myAddress:Ljava/lang/String;

.field protected myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;

.field protected myPort:I

.field private peerAddress:Ljava/net/InetAddress;

.field private peerPacketSourceAddress:Ljava/net/InetAddress;

.field private peerPacketSourcePort:I

.field private peerPort:I

.field private peerProtocol:Ljava/lang/String;

.field private pingBackRecord:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/stack/UDPMessageChannel$PingBackTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private receptionTime:J

.field protected sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;


# direct methods
.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;)V
    .locals 2
    .param p1, "stack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    .prologue
    .line 169
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;-><init>()V

    .line 137
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 170
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 171
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 173
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    .local v0, "mythread":Ljava/lang/Thread;
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 176
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myPort:I

    const-string/jumbo v1, "UDPMessageChannelThread"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method

.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    .locals 2
    .param p1, "stack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;
    .param p3, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 193
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;-><init>()V

    .line 137
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 195
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 196
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 197
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 199
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 200
    invoke-virtual {p2}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myPort:I

    .line 201
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .local v0, "mythread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v1, "UDPMessageChannelThread"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;)V
    .locals 3
    .param p1, "targetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    .prologue
    .line 218
    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/MessageChannel;-><init>()V

    .line 137
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 219
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 220
    iput p2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    const-string/jumbo v0, "UDP"

    .line 221
    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 222
    iput-object p4, p0, Lgov2/nist/javax2/sip/stack/MessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    .line 223
    invoke-virtual {p4}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 224
    invoke-virtual {p4}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myPort:I

    .line 225
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 226
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating message channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lgov2/nist/javax2/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    .prologue
    .line 91
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    return-object v0
.end method

.method private processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    .locals 25
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 303
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v21

    .line 305
    .local v21, "packetLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v13

    .line 306
    .local v13, "bytes":[B
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .local v19, "msgBytes":[B
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 307
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v13, v4, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    const/16 v22, 0x0

    .line 320
    .local v22, "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->receptionTime:J

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseSIPMessage([B)Lgov2/nist/javax2/sip/message/SIPMessage;

    move-result-object v22

    .local v22, "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    const/4 v4, 0x0

    .line 322
    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    if-eqz v22, :cond_7

    .line 380
    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v24

    .line 382
    .local v24, "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v4

    if-nez v4, :cond_a

    .line 385
    :cond_0
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 386
    .local v12, "badmsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 394
    :goto_1
    return-void

    .line 311
    .end local v12    # "badmsg":Ljava/lang/String;
    .end local v22    # "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    .end local v24    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UDPMessageChannel: processIncomingDataPacket : peerAddress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v15

    .local v15, "ex":Ljava/text/ParseException;
    const/4 v4, 0x0

    .line 324
    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 334
    :goto_2
    new-instance v20, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .local v20, "msgString":Ljava/lang/String;
    const-string/jumbo v4, "SIP/"

    .line 335
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 358
    :cond_2
    :goto_3
    return-void

    .line 326
    .end local v20    # "msgString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Rejecting message !  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    invoke-interface {v4, v15}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .restart local v20    # "msgString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "ACK "

    .line 335
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Lgov2/nist/javax2/sip/message/SIPMessage;

    move-result-object v5

    .line 338
    .local v5, "badReqRes":Lgov2/nist/javax2/sip/message/SIPMessage;
    if-nez v5, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v8, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 339
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 344
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    const-string/jumbo v8, "UDP"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 349
    :catch_1
    move-exception v14

    .line 347
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    invoke-interface {v4, v14}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 340
    .end local v14    # "e":Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v8, "Sending automatic 400 Bad Request:"

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 365
    .end local v5    # "badReqRes":Lgov2/nist/javax2/sip/message/SIPMessage;
    .end local v15    # "ex":Ljava/text/ParseException;
    .end local v20    # "msgString":Ljava/lang/String;
    .restart local v22    # "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 369
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 378
    :goto_6
    return-void

    .line 366
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v8, "Rejecting message !  + Null message parsed."

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string/jumbo v4, "\r\n\r\n"

    .line 370
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 371
    .local v7, "retval":[B
    new-instance v6, Ljava/net/DatagramPacket;

    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    invoke-direct/range {v6 .. v11}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 373
    .local v6, "keepalive":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v4

    new-instance v8, Lgov2/nist/javax2/sip/stack/UDPMessageChannel$PingBackTimerTask;

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9, v10}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel$PingBackTimerTask;-><init>(Lgov2/nist/javax2/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v4, v8, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_6

    .line 382
    .end local v6    # "keepalive":Ljava/net/DatagramPacket;
    .end local v7    # "retval":[B
    .restart local v24    # "viaList":Lgov2/nist/javax2/sip/header/ViaList;
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 399
    move-object/from16 v0, v22

    instance-of v4, v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v4, :cond_d

    .line 426
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 427
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 428
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 429
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    .line 430
    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 433
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->processMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 435
    return-void

    .line 387
    .restart local v12    # "badmsg":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ">>> Dropped Bad Msg From = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "To = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "CallId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "CSeq = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Via = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 400
    .end local v12    # "badmsg":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v24 .. v24}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v23

    check-cast v23, Lgov2/nist/javax2/sip/header/Via;

    .line 401
    .local v23, "v":Lgov2/nist/javax2/sip/header/Via;
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v4, v4, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->addressResolver:Lgov2/nist/core/net/AddressResolver;

    invoke-virtual/range {v23 .. v23}, Lgov2/nist/javax2/sip/header/Via;->getHop()Ljavax2/sip/address/Hop;

    move-result-object v8

    invoke-interface {v4, v8}, Lgov2/nist/core/net/AddressResolver;->resolveAddress(Ljavax2/sip/address/Hop;)Ljavax2/sip/address/Hop;

    move-result-object v18

    .line 402
    .local v18, "hop":Ljavax2/sip/address/Hop;
    invoke-interface/range {v18 .. v18}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    .line 403
    invoke-virtual/range {v23 .. v23}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 405
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 408
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    const-string/jumbo v4, "rport"

    .line 412
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v17

    .line 413
    .local v17, "hasRPort":Z
    if-eqz v17, :cond_f

    :cond_e
    const-string/jumbo v4, "received"

    .line 414
    move-object/from16 v0, p0

    iget-object v8, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_8
    if-eqz v17, :cond_b

    const-string/jumbo v4, "rport"

    .line 418
    move-object/from16 v0, p0

    iget v8, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Lgov2/nist/javax2/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 422
    .end local v17    # "hasRPort":Z
    :catch_2
    move-exception v16

    .line 421
    .local v16, "ex1":Ljava/text/ParseException;
    invoke-static/range {v16 .. v16}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_7

    .line 413
    .end local v16    # "ex1":Ljava/text/ParseException;
    .restart local v17    # "hasRPort":Z
    :cond_f
    :try_start_3
    invoke-interface/range {v18 .. v18}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 880
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 812
    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 817
    check-cast v1, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;

    .line 818
    .local v1, "that":Lgov2/nist/javax2/sip/stack/UDPMessageChannel;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 821
    .end local v1    # "that":Lgov2/nist/javax2/sip/stack/UDPMessageChannel;
    :goto_0
    return v0

    .line 812
    :cond_0
    return v2

    .line 815
    :cond_1
    const/4 v0, 0x0

    .local v0, "retval":Z
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    const-string/jumbo v2, "UDP"

    invoke-static {v0, v1, v2}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    return v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v0, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "udp"

    .line 762
    return-object v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p3, "hdrClass"    # Ljava/lang/Class;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    if-nez p3, :cond_1

    .line 563
    :goto_1
    invoke-virtual {p2, p4}, Lgov2/nist/javax2/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 565
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-class v0, Lgov2/nist/javax2/sip/header/From;

    .line 552
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    :goto_2
    throw p1

    :cond_3
    const-class v0, Lgov2/nist/javax2/sip/header/To;

    .line 552
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lgov2/nist/javax2/sip/header/Via;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 558
    :cond_4
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    const-string/jumbo v1, "BAD MESSAGE!"

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p5}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isReliable()Z
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public processMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 15
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;

    .prologue
    const/4 v7, 0x0

    .line 444
    move-object/from16 v0, p1

    instance-of v3, v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v3, :cond_1

    move-object/from16 v11, p1

    .line 490
    check-cast v11, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 492
    .local v11, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :try_start_0
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, v11, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerResponseInterface;

    move-result-object v13

    .line 501
    .local v13, "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    if-nez v13, :cond_b

    .line 522
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_13

    .line 528
    .end local v11    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p1

    .line 445
    check-cast v10, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 450
    .local v10, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 457
    :goto_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3, v10, p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/ServerRequestInterface;

    move-result-object v12

    .line 460
    .local v12, "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    if-eqz v12, :cond_4

    .line 468
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 472
    :goto_2
    :try_start_1
    invoke-interface {v12, v10, p0}, Lgov2/nist/javax2/sip/stack/ServerRequestInterface;->processRequest(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    instance-of v3, v12, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v3, :cond_7

    .line 481
    :cond_2
    :goto_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Done processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    .end local v12    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->serverLogger:Lgov2/nist/core/ServerLogger;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->getPeerHostPort()Lgov2/nist/core/HostPort;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myPort:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v8, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->receptionTime:J

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lgov2/nist/core/ServerLogger;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_1

    .line 461
    .restart local v12    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 466
    :goto_4
    return-void

    .line 462
    :cond_5
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "Null request interface returned -- dropping request"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_4

    .line 469
    :cond_6
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "About to process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object v14, v12

    .line 475
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 476
    .local v14, "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v12

    .line 477
    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_3

    .line 479
    .end local v14    # "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :catchall_0
    move-exception v3

    .line 474
    instance-of v4, v12, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v4, :cond_9

    .line 479
    .end local v12    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_8
    :goto_5
    throw v3

    .restart local v12    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    :cond_9
    move-object v14, v12

    .line 475
    check-cast v14, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 476
    .restart local v14    # "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_8

    .line 477
    check-cast v12, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v12    # "sipServerRequest":Lgov2/nist/javax2/sip/stack/ServerRequestInterface;
    invoke-virtual {v12}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto :goto_5

    .line 498
    .end local v10    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v14    # "sipServerTx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v11    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "ex":Ljava/text/ParseException;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 497
    :goto_6
    return-void

    .line 495
    :cond_a
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dropping Badly formatted response message >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_6

    .line 503
    .end local v2    # "ex":Ljava/text/ParseException;
    .restart local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_b
    :try_start_2
    instance-of v3, v13, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v3, :cond_d

    .line 513
    :cond_c
    invoke-interface {v13, v11, p0}, Lgov2/nist/javax2/sip/stack/ServerResponseInterface;->processResponse(Lgov2/nist/javax2/sip/message/SIPResponse;Lgov2/nist/javax2/sip/stack/MessageChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    instance-of v3, v13, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-eqz v3, :cond_0

    move-object v3, v13

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    check-cast v13, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_0

    .line 503
    .restart local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_d
    :try_start_3
    move-object v0, v13

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object v3, v0

    invoke-virtual {v3, v11}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->checkFromTag(Lgov2/nist/javax2/sip/message/SIPResponse;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 505
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-nez v3, :cond_f

    .line 515
    :goto_7
    instance-of v3, v13, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v3, :cond_11

    .line 517
    .end local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_e
    :goto_8
    return-void

    .line 506
    .restart local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_f
    :try_start_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dropping response message with invalid tag >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 517
    :catchall_1
    move-exception v3

    move-object v4, v3

    .line 515
    instance-of v3, v13, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v3, :cond_12

    .line 517
    .end local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_10
    :goto_9
    throw v4

    .restart local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_11
    move-object v3, v13

    .line 515
    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_e

    .line 517
    check-cast v13, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto :goto_8

    .restart local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_12
    move-object v3, v13

    .line 515
    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_10

    .line 517
    check-cast v13, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto :goto_9

    .line 523
    .restart local v13    # "sipServerResponse":Lgov2/nist/javax2/sip/stack/ServerResponseInterface;
    :cond_13
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "null sipServerResponse!"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 241
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;

    if-eqz v4, :cond_2

    .line 248
    :goto_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v4, v4, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ne v4, v8, :cond_3

    .line 278
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 283
    .local v2, "packet":Ljava/net/DatagramPacket;
    :goto_1
    :try_start_0
    invoke-direct {p0, v2}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :cond_1
    :goto_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget v4, v4, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ne v4, v8, :cond_0

    .line 291
    return-void

    .line 242
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :cond_2
    new-instance v4, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-direct {v4}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    iput-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;

    .line 243
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->myParser:Lgov2/nist/javax2/sip/parser/StringMsgParser;

    invoke-virtual {v4, p0}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov2/nist/javax2/sip/parser/ParseExceptionListener;)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v5, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 250
    :cond_4
    :goto_3
    :try_start_1
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 272
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/DatagramPacket;

    .line 275
    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    iput-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    goto :goto_1

    .line 252
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :cond_5
    :try_start_2
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-boolean v4, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    .line 256
    if-eqz v3, :cond_7

    .line 261
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 266
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v4, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 270
    :catch_0
    move-exception v1

    .line 269
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-boolean v4, v4, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v4, :cond_4

    monitor-exit v5

    return-void

    .line 252
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 257
    :cond_7
    :try_start_5
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/core/ThreadAuditor;->addCurrentThread()Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .local v3, "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    goto :goto_4

    .line 275
    .end local v3    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 288
    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v4

    const-string/jumbo v5, "Error while processing incoming UDP packet"

    invoke-interface {v4, v5, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2
.end method

.method public sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 21
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 590
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 592
    .local v6, "time":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v14

    .local v14, "arr$":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 608
    move-object/from16 v0, p0

    iget-object v10, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v11, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    move-object/from16 v0, p1

    instance-of v13, v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 622
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 625
    :goto_2
    return-void

    .line 575
    .end local v6    # "time":J
    .end local v14    # "arr$":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    move-object/from16 v0, p1

    instance-of v2, v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v2, :cond_4

    .line 583
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logStackTrace(I)V

    goto :goto_0

    :cond_4
    move-object/from16 v2, p1

    .line 576
    check-cast v2, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestLine()Lgov2/nist/javax2/sip/header/RequestLine;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logStackTrace(I)V

    goto/16 :goto_0

    .line 592
    .restart local v6    # "time":J
    .restart local v14    # "arr$":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    :cond_5
    :try_start_1
    aget-object v20, v14, v17

    .line 593
    .local v20, "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 592
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 593
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    if-ne v2, v3, :cond_6

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v3, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v19

    .line 598
    .local v19, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    move-object/from16 v0, v19

    instance-of v2, v0, Lgov2/nist/javax2/sip/stack/RawMessageChannel;

    if-eqz v2, :cond_6

    .line 599
    check-cast v19, Lgov2/nist/javax2/sip/stack/RawMessageChannel;

    .end local v19    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgov2/nist/javax2/sip/stack/RawMessageChannel;->processMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_9

    .line 619
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 622
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 623
    :goto_4
    return-void

    .line 601
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Self routing message"

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 623
    .end local v14    # "arr$":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :catch_0
    move-exception v15

    .line 612
    .local v15, "ex":Ljava/io/IOException;
    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    .end local v15    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    move-object v8, v2

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 622
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 623
    :goto_5
    throw v8

    .line 619
    .restart local v14    # "arr$":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    .restart local v20    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->isNullRequest()Z

    move-result v2

    if-nez v2, :cond_8

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v5, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_4

    .line 623
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Sent EMPTY Message"

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 619
    .end local v20    # "messageProcessor":Lgov2/nist/javax2/sip/stack/MessageProcessor;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->isNullRequest()Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v5, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto/16 :goto_2

    .line 623
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Sent EMPTY Message"

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 612
    .end local v14    # "arr$":[Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :catch_1
    move-exception v16

    .line 614
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 617
    :goto_6
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "An exception occured while sending message"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "An exception occured while sending message"

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 619
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->isNullRequest()Z

    move-result v2

    if-nez v2, :cond_a

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v5, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->logMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto/16 :goto_5

    .line 623
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Sent EMPTY Message"

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;ILjava/lang/String;Z)V
    .locals 15
    .param p1, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "peerProtocol"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 700
    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    .line 707
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    const-string/jumbo v2, "UDP"

    .line 712
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 741
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v2, v2, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->ioHandler:Lgov2/nist/javax2/sip/stack/IOHandler;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v3

    const-string/jumbo v6, "tcp"

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p1

    move/from16 v8, p5

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lgov2/nist/javax2/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;ZLgov2/nist/javax2/sip/stack/MessageChannel;)Ljava/net/Socket;

    .line 745
    :cond_0
    :goto_1
    return-void

    .line 701
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 705
    :goto_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Receiver port not set "

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    :cond_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":sendMessage: Dropping reply!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 708
    :cond_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ":sendMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "udp"

    .line 713
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 714
    .local v12, "msg":[B
    new-instance v13, Ljava/net/DatagramPacket;

    array-length v2, v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v13, v12, v2, v0, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 719
    .local v13, "reply":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v2, v2, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-nez v2, :cond_5

    .line 724
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov2/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v14

    .line 726
    .local v14, "sock":Ljava/net/DatagramSocket;
    :goto_3
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 731
    :goto_4
    invoke-virtual {v14, v13}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 732
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v2, v2, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-nez v2, :cond_0

    invoke-virtual {v14}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 737
    .end local v14    # "sock":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v10

    .line 734
    .local v10, "ex":Ljava/io/IOException;
    throw v10

    .line 720
    .end local v10    # "ex":Ljava/io/IOException;
    :cond_5
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v2, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v14, v2, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .restart local v14    # "sock":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 727
    :cond_6
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 734
    .end local v14    # "sock":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v11

    .line 736
    .local v11, "ex":Ljava/lang/Exception;
    invoke-static {v11}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method protected sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
    .locals 9
    .param p1, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "reConnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    const/4 v6, -0x1

    .line 641
    if-eq p3, v6, :cond_2

    .line 648
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_1
    const-string/jumbo v6, "udp"

    .line 655
    invoke-virtual {p1, v6}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 656
    .local v3, "msg":[B
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v4, v3, v6, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 660
    .local v4, "reply":Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    .line 662
    .local v0, "created":Z
    :try_start_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-boolean v6, v6, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-nez v6, :cond_5

    .line 675
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    .line 676
    .local v5, "sock":Ljava/net/DatagramSocket;
    const/4 v0, 0x1

    .line 678
    :goto_2
    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    if-nez v0, :cond_6

    .line 685
    .end local v5    # "sock":Ljava/net/DatagramSocket;
    :goto_3
    return-void

    .line 638
    .end local v0    # "created":Z
    .end local v3    # "msg":[B
    .end local v4    # "reply":Ljava/net/DatagramPacket;
    :cond_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 639
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const/16 v7, 0x10

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logStackTrace(I)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 646
    :goto_4
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Receiver port not set "

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 643
    :cond_3
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":sendMessage: Dropping reply!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 649
    :cond_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendMessage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 651
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v7, "*******************\n"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 667
    .restart local v0    # "created":Z
    .restart local v3    # "msg":[B
    .restart local v4    # "reply":Ljava/net/DatagramPacket;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/UDPMessageChannel;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    check-cast v6, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;

    iget-object v5, v6, Lgov2/nist/javax2/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .restart local v5    # "sock":Ljava/net/DatagramSocket;
    goto/16 :goto_2

    .line 679
    :cond_6
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 684
    .end local v5    # "sock":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v1

    .line 681
    .local v1, "ex":Ljava/io/IOException;
    throw v1

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 683
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3
.end method
