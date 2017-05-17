.class public Lgov2/nist/javax2/sip/SipProviderImpl;
.super Ljava/lang/Object;
.source "SipProviderImpl.java"

# interfaces
.implements Ljavax2/sip/SipProvider;
.implements Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;
.implements Lgov2/nist/javax2/sip/stack/SIPDialogEventListener;


# instance fields
.field private IN6_ADDR_ANY:Ljava/lang/String;

.field private IN_ADDR_ANY:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private automaticDialogSupportEnabled:Z

.field private dialogErrorsAutomaticallyHandled:Z

.field private eventScanner:Lgov2/nist/javax2/sip/EventScanner;

.field private listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

.field private port:I

.field private sipListener:Ljavax2/sip/SipListener;

.field protected sipStack:Lgov2/nist/javax2/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "0.0.0.0"

    .line 116
    iput-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    const-string/jumbo v0, "::0"

    .line 121
    iput-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 127
    return-void
.end method

.method protected constructor <init>(Lgov2/nist/javax2/sip/SipStackImpl;)V
    .locals 1
    .param p1, "sipStack"    # Lgov2/nist/javax2/sip/SipStackImpl;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "0.0.0.0"

    .line 116
    iput-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    const-string/jumbo v0, "::0"

    .line 121
    iput-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 192
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/SipStackImpl;->getEventScanner()Lgov2/nist/javax2/sip/EventScanner;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    .line 193
    iput-object p1, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 194
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/EventScanner;->incrementRefcount()V

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    .line 197
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->isAutomaticDialogErrorHandlingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 199
    return-void
.end method


# virtual methods
.method public addSipListener(Ljavax2/sip/SipListener;)V
    .locals 3
    .param p1, "sipListener"    # Ljavax2/sip/SipListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipStackImpl;->sipListener:Ljavax2/sip/SipListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipStackImpl;->sipListener:Ljavax2/sip/SipListener;

    if-ne v0, p1, :cond_1

    .line 222
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    :goto_1
    iput-object p1, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipListener:Ljavax2/sip/SipListener;

    .line 226
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iput-object p1, v0, Lgov2/nist/javax2/sip/SipStackImpl;->sipListener:Ljavax2/sip/SipListener;

    goto :goto_0

    .line 218
    :cond_1
    new-instance v0, Ljava/util/TooManyListenersException;

    const-string/jumbo v1, "Stack already has a listener. Only one listener per stack allowed"

    invoke-direct {v0, v1}, Ljava/util/TooManyListenersException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add SipListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;)V
    .locals 6
    .param p1, "dialogErrorEvent"    # Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;

    .prologue
    monitor-enter p0

    .line 912
    :try_start_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 913
    .local v2, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    sget-object v1, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    .line 914
    .local v1, "reason":Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 916
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 919
    :goto_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 922
    :goto_1
    new-instance v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent;

    invoke-direct {v0, p0, v2, v1}, Lgov2/nist/javax2/sip/DialogTimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/Dialog;Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;)V

    .local v0, "ev":Lgov2/nist/javax2/sip/DialogTimeoutEvent;
    const/4 v3, 0x0

    .line 924
    invoke-virtual {p0, v0, v3}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 925
    return-void

    .line 915
    .end local v0    # "ev":Lgov2/nist/javax2/sip/DialogTimeoutEvent;
    :cond_0
    :try_start_1
    sget-object v1, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    goto :goto_0

    .line 917
    :cond_1
    sget-object v1, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    goto :goto_0

    .line 920
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dialog TimeoutError occured on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "reason":Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;
    .end local v2    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getListeningPoint()Ljavax2/sip/ListeningPoint;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 237
    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/ListeningPoint;

    return-object v0
.end method

.method public getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/ListeningPoint;

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null transport param"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getListeningPoints()[Ljavax2/sip/ListeningPoint;
    .locals 2

    .prologue
    monitor-enter p0

    .line 933
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-array v0, v1, [Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 934
    .local v0, "retval":[Ljavax2/sip/ListeningPoint;
    iget-object v1, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 935
    return-object v0

    .end local v0    # "retval":[Ljavax2/sip/ListeningPoint;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNewClientTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ClientTransaction;
    .locals 23
    .param p1, "request"    # Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionUnavailableException;
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p1, :cond_5

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/SipStackImpl;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v16, p1

    .line 267
    check-cast v16, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 268
    .local v16, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_7

    .line 270
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "ACK"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 276
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 283
    :goto_0
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_a

    .line 299
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "CANCEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v20

    if-nez v20, :cond_d

    :goto_1
    const/4 v11, 0x0

    .line 326
    .local v11, "hop":Ljavax2/sip/address/Hop;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->getNextHop(Lgov2/nist/javax2/sip/message/SIPRequest;)Ljavax2/sip/address/Hop;
    :try_end_1
    .catch Ljavax2/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 327
    .local v11, "hop":Ljavax2/sip/address/Hop;
    if-eqz v11, :cond_e

    .line 334
    invoke-interface {v11}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v18

    .line 335
    .local v18, "transport":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v12

    check-cast v12, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 337
    .local v12, "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "dialogId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v5

    .line 339
    .local v5, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v5, :cond_f

    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 358
    .local v3, "branchId":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_10

    .line 362
    :cond_3
    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "branchId":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 366
    .end local v3    # "branchId":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v17

    .line 369
    .local v17, "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 371
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/header/Via;->getPort()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    .line 372
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    .line 374
    .restart local v3    # "branchId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v11}, Lgov2/nist/javax2/sip/SipStackImpl;->createMessageChannel(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageProcessor;Ljavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 376
    .local v4, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-eqz v4, :cond_13

    .line 377
    invoke-virtual {v4, v11}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setNextHop(Ljavax2/sip/address/Hop;)V

    .line 378
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 379
    invoke-virtual {v4, v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    invoke-interface/range {p1 .. p1}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lgov2/nist/javax2/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 394
    if-nez v5, :cond_16

    .line 401
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->addEventListener(Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 402
    return-object v4

    .line 264
    .end local v3    # "branchId":Ljava/lang/String;
    .end local v4    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v5    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v6    # "dialogId":Ljava/lang/String;
    .end local v11    # "hop":Ljavax2/sip/address/Hop;
    .end local v12    # "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v16    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    .end local v18    # "transport":Ljava/lang/String;
    :cond_5
    new-instance v20, Ljava/lang/NullPointerException;

    const-string/jumbo v21, "null request"

    invoke-direct/range {v20 .. v21}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 265
    :cond_6
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Stack is stopped"

    invoke-direct/range {v20 .. v21}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 269
    .restart local v16    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_7
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Transaction already assigned to request"

    invoke-direct/range {v20 .. v21}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 271
    :cond_8
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Cannot create client transaction for  ACK"

    invoke-direct/range {v20 .. v21}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_9
    const-string/jumbo v20, "udp"

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v13

    check-cast v13, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 278
    .local v13, "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getViaHeader()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v19

    .line 279
    .local v19, "via":Lgov2/nist/javax2/sip/header/Via;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax2/sip/message/Request;->setHeader(Ljavax2/sip/header/Header;)V

    goto/16 :goto_0

    .line 286
    .end local v13    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v19    # "via":Lgov2/nist/javax2/sip/header/Via;
    :catch_0
    move-exception v8

    .line 285
    .local v8, "ex":Ljava/text/ParseException;
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    invoke-virtual {v8}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 292
    .end local v8    # "ex":Ljava/text/ParseException;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "z9hG4bK"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v21, v0

    move-object/from16 v20, p1

    check-cast v20, Lgov2/nist/javax2/sip/message/SIPRequest;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 296
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Transaction already exists!"

    invoke-direct/range {v20 .. v21}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 300
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v21, v0

    move-object/from16 v20, p1

    check-cast v20, Lgov2/nist/javax2/sip/message/SIPRequest;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->findCancelTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 302
    .restart local v4    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-eqz v4, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    check-cast p1, Lgov2/nist/javax2/sip/message/SIPRequest;

    .end local p1    # "request":Ljavax2/sip/message/Request;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->createClientTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v14

    .local v14, "retval":Ljavax2/sip/ClientTransaction;
    move-object/from16 v20, v14

    .line 306
    check-cast v20, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->addEventListener(Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v21, v0

    move-object/from16 v20, v14

    check-cast v20, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V

    .line 308
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v20

    if-nez v20, :cond_c

    .line 313
    :goto_7
    return-object v14

    :cond_c
    move-object/from16 v20, v14

    .line 309
    check-cast v20, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v21

    check-cast v21, Lgov2/nist/javax2/sip/stack/SIPDialog;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_7

    .line 318
    .end local v4    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v14    # "retval":Ljavax2/sip/ClientTransaction;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v21

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "could not find existing transaction for "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v20, p1

    check-cast v20, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " creating a new one "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 328
    .restart local v11    # "hop":Ljavax2/sip/address/Hop;
    :cond_e
    :try_start_3
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Cannot resolve next hop -- transaction unavailable"

    invoke-direct/range {v20 .. v21}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_3
    .catch Ljavax2/sip/SipException; {:try_start_3 .. :try_end_3} :catch_1

    .line 333
    .end local v11    # "hop":Ljavax2/sip/address/Hop;
    :catch_1
    move-exception v10

    .line 331
    .local v10, "ex":Ljavax2/sip/SipException;
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Cannot resolve next hop -- transaction unavailable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 339
    .end local v10    # "ex":Ljavax2/sip/SipException;
    .restart local v5    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .restart local v6    # "dialogId":Ljava/lang/String;
    .restart local v11    # "hop":Ljavax2/sip/address/Hop;
    .restart local v12    # "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .restart local v18    # "transport":Ljava/lang/String;
    :cond_f
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v20

    sget-object v21, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/SipStackImpl;->removeDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto/16 :goto_2

    .line 358
    .local v3, "branchId":Ljava/lang/String;
    :cond_10
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "z9hG4bK"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgov2/nist/javax2/sip/SipStackImpl;->checkBranchId()Z

    move-result v20

    if-nez v20, :cond_3

    goto/16 :goto_3

    .line 369
    .end local v3    # "branchId":Ljava/lang/String;
    .restart local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :cond_11
    invoke-virtual/range {v17 .. v18}, Lgov2/nist/javax2/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 402
    .end local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :catch_2
    move-exception v7

    .line 405
    .local v7, "ex":Ljava/io/IOException;
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Could not resolve next hop or listening point unavailable! "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 371
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :cond_12
    :try_start_5
    invoke-virtual {v12}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/Via;->setPort(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_5

    .line 405
    .end local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :catch_3
    move-exception v8

    .line 409
    .restart local v8    # "ex":Ljava/text/ParseException;
    invoke-static {v8}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 410
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Unexpected Exception FIXME! "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 376
    .end local v8    # "ex":Ljava/text/ParseException;
    .local v3, "branchId":Ljava/lang/String;
    .restart local v4    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .restart local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :cond_13
    :try_start_6
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Cound not create tx"

    invoke-direct/range {v20 .. v21}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    .line 410
    .end local v3    # "branchId":Ljava/lang/String;
    .end local v4    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :catch_4
    move-exception v9

    .line 412
    .local v9, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-static {v9}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 413
    new-instance v20, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v21, "Unexpected Exception FIXME! "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 387
    .end local v9    # "ex":Ljavax2/sip/InvalidArgumentException;
    .restart local v3    # "branchId":Ljava/lang/String;
    .restart local v4    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .restart local v17    # "topmostVia":Lgov2/nist/javax2/sip/header/Via;
    :cond_14
    if-nez v5, :cond_15

    .line 389
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lgov2/nist/javax2/sip/SipStackImpl;->createDialog(Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v15

    .line 391
    .local v15, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v15, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 388
    .end local v15    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_15
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 395
    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_6
.end method

.method public getNewServerTransaction(Ljavax2/sip/message/Request;)Ljavax2/sip/ServerTransaction;
    .locals 12
    .param p1, "request"    # Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/TransactionAlreadyExistsException;,
            Ljavax2/sip/TransactionUnavailableException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    move-object v7, p1

    .line 429
    check-cast v7, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 431
    .local v7, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :try_start_0
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    invoke-interface {p1}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "ACK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 445
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "NOTIFY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 456
    :cond_0
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->acquireSem()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 461
    :try_start_1
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 499
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v9

    if-nez v9, :cond_f

    .line 535
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object v8, v0

    .line 537
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v8, :cond_13

    .line 539
    check-cast p1, Lgov2/nist/javax2/sip/message/SIPRequest;

    .end local p1    # "request":Ljavax2/sip/message/Request;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object v8, v0

    .line 540
    if-nez v8, :cond_14

    .line 560
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMessageChannel()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/stack/MessageChannel;

    .line 561
    .local v6, "mc":Lgov2/nist/javax2/sip/stack/MessageChannel;
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v6}, Lgov2/nist/javax2/sip/SipStackImpl;->createServerTransaction(Lgov2/nist/javax2/sip/stack/MessageChannel;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v8

    .line 562
    if-eqz v8, :cond_17

    .line 566
    invoke-virtual {v8, v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 567
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v8}, Lgov2/nist/javax2/sip/SipStackImpl;->mapTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 571
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 573
    .local v2, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v2, :cond_18

    .line 586
    :goto_0
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->releaseSem()V

    return-object v8

    .line 427
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    .end local v6    # "mc":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v7    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v8    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_1
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Stack is stopped"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 434
    .restart local v7    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :catch_0
    move-exception v5

    .line 433
    .local v5, "ex":Ljava/text/ParseException;
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    invoke-virtual {v5}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 437
    .end local v5    # "ex":Ljava/text/ParseException;
    :cond_2
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 440
    :goto_1
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Cannot create Server transaction for ACK "

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 438
    :cond_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v9

    const-string/jumbo v10, "Creating server transaction for ACK -- makes no sense!"

    invoke-interface {v9, v10}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_4
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 448
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint()Ljavax2/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov2/nist/javax2/sip/ListeningPointImpl;

    invoke-virtual {v10, v7, v9}, Lgov2/nist/javax2/sip/SipStackImpl;->findSubscribeTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;Lgov2/nist/javax2/sip/ListeningPointImpl;)Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    move-result-object v1

    .line 451
    .local v1, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-nez v1, :cond_0

    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iget-boolean v9, v9, Lgov2/nist/javax2/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    if-nez v9, :cond_0

    .line 452
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Cannot find matching Subscription (and gov2.nist.javax2.sip.DELIVER_UNSOLICITED_NOTIFY not set)"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 457
    .end local v1    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_5
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Transaction not available -- could not acquire stack lock"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 462
    :cond_6
    :try_start_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v9

    if-nez v9, :cond_8

    .line 466
    check-cast p1, Lgov2/nist/javax2/sip/message/SIPRequest;

    .end local p1    # "request":Ljavax2/sip/message/Request;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object v8, v0

    .line 467
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-eqz v8, :cond_9

    .line 469
    invoke-virtual {v8}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_a

    .line 472
    :goto_2
    :try_start_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v8}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    :try_start_4
    invoke-virtual {v8, p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->addEventListener(Lgov2/nist/javax2/sip/stack/SIPTransactionEventListener;)V

    .line 478
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    if-nez v9, :cond_b

    .line 586
    :cond_7
    :goto_3
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->releaseSem()V

    return-object v8

    .line 463
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_8
    :try_start_5
    new-instance v9, Ljavax2/sip/TransactionAlreadyExistsException;

    const-string/jumbo v10, "server transaction already exists!"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 586
    .end local v8    # "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local p1    # "request":Ljavax2/sip/message/Request;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/SipStackImpl;->releaseSem()V

    throw v9

    .line 468
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_9
    :try_start_6
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Transaction not available"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 470
    :cond_a
    invoke-virtual {v8, v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    goto :goto_2

    .line 475
    :catch_1
    move-exception v4

    .line 474
    .local v4, "ex":Ljava/io/IOException;
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Error sending provisional response"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 481
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_b
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 482
    .restart local v3    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    .line 483
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-eqz v2, :cond_d

    .line 487
    :goto_4
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "INVITE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 492
    :cond_c
    :goto_5
    invoke-virtual {v2, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 493
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 494
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v2}, Lgov2/nist/javax2/sip/SipStackImpl;->putDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    goto :goto_3

    .line 484
    :cond_d
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v8}, Lgov2/nist/javax2/sip/SipStackImpl;->createDialog(Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    goto :goto_4

    .line 488
    :cond_e
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 490
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v8, v7}, Lgov2/nist/javax2/sip/SipStackImpl;->putInMergeTable(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Lgov2/nist/javax2/sip/message/SIPRequest;)V

    goto :goto_5

    .line 506
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_f
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object v8, v0

    .line 508
    .local v8, "transaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v8, :cond_10

    .line 510
    check-cast p1, Lgov2/nist/javax2/sip/message/SIPRequest;

    .end local p1    # "request":Ljavax2/sip/message/Request;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object v8, v0

    .line 511
    if-eqz v8, :cond_11

    .line 513
    invoke-virtual {v8}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_12

    .line 517
    :goto_6
    :try_start_7
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v8}, Lgov2/nist/javax2/sip/SipStackImpl;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 526
    const/4 v9, 0x1

    :try_start_8
    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 527
    .restart local v3    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;

    move-result-object v2

    .line 528
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-eqz v2, :cond_7

    .line 529
    invoke-virtual {v2, v8}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 530
    invoke-virtual {v2, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 531
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 509
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_10
    new-instance v9, Ljavax2/sip/TransactionAlreadyExistsException;

    const-string/jumbo v10, "Transaction exists! "

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 512
    .end local p1    # "request":Ljavax2/sip/message/Request;
    :cond_11
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Transaction not available!"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 514
    :cond_12
    invoke-virtual {v8, v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    goto :goto_6

    .line 521
    :catch_2
    move-exception v4

    .line 519
    .restart local v4    # "ex":Ljava/io/IOException;
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Could not send back provisional response!"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 538
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local p1    # "request":Ljavax2/sip/message/Request;
    :cond_13
    new-instance v9, Ljavax2/sip/TransactionAlreadyExistsException;

    const-string/jumbo v10, "Transaction exists! "

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 541
    .end local p1    # "request":Ljavax2/sip/message/Request;
    :cond_14
    invoke-virtual {v8}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 544
    :goto_7
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v8}, Lgov2/nist/javax2/sip/SipStackImpl;->mapTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 548
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 549
    .restart local v3    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9, v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov2/nist/javax2/sip/stack/SIPDialog;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    .line 550
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-nez v2, :cond_16

    .line 586
    :goto_8
    iget-object v9, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->releaseSem()V

    return-object v8

    .line 542
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    :cond_15
    :try_start_9
    invoke-virtual {v8, v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    goto :goto_7

    .line 551
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .restart local v3    # "dialogId":Ljava/lang/String;
    :cond_16
    invoke-virtual {v2, v8}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 552
    invoke-virtual {v2, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 553
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_8

    .line 563
    .end local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    .restart local v6    # "mc":Lgov2/nist/javax2/sip/stack/MessageChannel;
    :cond_17
    new-instance v9, Ljavax2/sip/TransactionUnavailableException;

    const-string/jumbo v10, "Transaction unavailable -- too many servrer transactions"

    invoke-direct {v9, v10}, Ljavax2/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 574
    .restart local v2    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .restart local v3    # "dialogId":Ljava/lang/String;
    :cond_18
    invoke-virtual {v2, v8}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 575
    invoke-virtual {v2, v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->addRoute(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 576
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0
.end method

.method public getSipListener()Ljavax2/sip/SipListener;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipListener:Ljavax2/sip/SipListener;

    return-object v0
.end method

.method public getSipStack()Ljavax2/sip/SipStack;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    return-object v0
.end method

.method public handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 5
    .param p1, "sipEvent"    # Ljava/util/EventObject;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 162
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :goto_0
    new-instance v1, Lgov2/nist/javax2/sip/EventWrapper;

    invoke-direct {v1, p1, p2}, Lgov2/nist/javax2/sip/EventWrapper;-><init>(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 181
    .local v1, "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iget-boolean v2, v2, Lgov2/nist/javax2/sip/SipStackImpl;->reEntrantListener:Z

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/EventScanner;->deliverEvent(Lgov2/nist/javax2/sip/EventWrapper;)V

    .line 188
    :goto_1
    return-void

    .line 163
    .end local v1    # "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "currentTransaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "this.sipListener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "sipEvent.source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 167
    instance-of v2, p1, Ljavax2/sip/RequestEvent;

    if-nez v2, :cond_2

    .line 171
    instance-of v2, p1, Ljavax2/sip/ResponseEvent;

    if-nez v2, :cond_3

    .line 176
    :cond_1
    :goto_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov2/nist/core/StackLogger;->logStackTrace()V

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 168
    check-cast v2, Ljavax2/sip/RequestEvent;

    invoke-virtual {v2}, Ljavax2/sip/RequestEvent;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v0

    .line 169
    .local v0, "dialog":Ljavax2/sip/Dialog;
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "dialog":Ljavax2/sip/Dialog;
    :cond_3
    move-object v2, p1

    .line 172
    check-cast v2, Ljavax2/sip/ResponseEvent;

    invoke-virtual {v2}, Ljavax2/sip/ResponseEvent;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v0

    .line 173
    .restart local v0    # "dialog":Ljavax2/sip/Dialog;
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 183
    .end local v0    # "dialog":Ljavax2/sip/Dialog;
    .restart local v1    # "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    :cond_4
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/EventScanner;->addEvent(Lgov2/nist/javax2/sip/EventWrapper;)V

    goto/16 :goto_1
.end method

.method public isAutomaticDialogSupportEnabled()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    return v0
.end method

.method public isDialogErrorsAutomaticallyHandled()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return v0
.end method

.method public declared-synchronized removeListeningPoints()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 989
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 995
    return-void

    .line 990
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 991
    .local v1, "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->stop()V

    .line 992
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeSipListener(Ljavax2/sip/SipListener;)V
    .locals 5
    .param p1, "sipListener"    # Ljavax2/sip/SipListener;

    .prologue
    const/4 v4, 0x0

    .line 604
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v3

    if-eq p1, v3, :cond_1

    .line 608
    :goto_0
    const/4 v0, 0x0

    .line 610
    .local v0, "found":Z
    iget-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 614
    if-eqz v0, :cond_3

    .line 617
    :goto_2
    return-void

    .line 605
    .end local v0    # "found":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_1
    iput-object v4, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipListener:Ljavax2/sip/SipListener;

    goto :goto_0

    .line 611
    .restart local v0    # "found":Z
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/SipProviderImpl;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 612
    .local v2, "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 615
    .end local v2    # "nextProvider":Lgov2/nist/javax2/sip/SipProviderImpl;
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iput-object v4, v3, Lgov2/nist/javax2/sip/SipStackImpl;->sipListener:Ljavax2/sip/SipListener;

    goto :goto_2
.end method

.method public sendResponse(Ljavax2/sip/message/Response;)V
    .locals 13
    .param p1, "response"    # Ljavax2/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 690
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/SipStackImpl;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, p1

    .line 691
    check-cast v6, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 692
    .local v6, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual {v6}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v9

    .line 693
    .local v9, "via":Lgov2/nist/javax2/sip/header/Via;
    if-eqz v9, :cond_4

    .line 694
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    check-cast p1, Lgov2/nist/javax2/sip/message/SIPMessage;

    .end local p1    # "response":Ljavax2/sip/message/Response;
    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 696
    .local v7, "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v7, :cond_5

    .line 700
    :cond_0
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v8

    .line 705
    .local v8, "transport":Ljava/lang/String;
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/header/Via;->getReceived()Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 710
    :goto_0
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/header/Via;->getRPort()I

    move-result v5

    .line 711
    .local v5, "port":I
    if-eq v5, v12, :cond_7

    :cond_1
    :goto_1
    const-string/jumbo v10, ":"

    .line 722
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_9

    .line 724
    :cond_2
    :goto_2
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/SipStackImpl;->getAddressResolver()Lgov2/nist/core/net/AddressResolver;

    move-result-object v10

    new-instance v11, Lgov2/nist/javax2/sip/stack/HopImpl;

    invoke-direct {v11, v2, v5, v8}, Lgov2/nist/javax2/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v10, v11}, Lgov2/nist/core/net/AddressResolver;->resolveAddress(Ljavax2/sip/address/Hop;)Ljavax2/sip/address/Hop;

    move-result-object v1

    .line 727
    .local v1, "hop":Ljavax2/sip/address/Hop;
    :try_start_0
    invoke-virtual {p0, v8}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 729
    .local v3, "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    if-eqz v3, :cond_a

    .line 732
    iget-object v10, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-interface {v1}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lgov2/nist/javax2/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax2/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax2/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, v3, Lgov2/nist/javax2/sip/ListeningPointImpl;->port:I

    invoke-virtual {v10, v11, v12, v1}, Lgov2/nist/javax2/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax2/sip/address/Hop;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v4

    .line 735
    .local v4, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    invoke-virtual {v4, v6}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    return-void

    .line 690
    .end local v1    # "hop":Ljavax2/sip/address/Hop;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v4    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v5    # "port":I
    .end local v6    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .end local v7    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .end local v8    # "transport":Ljava/lang/String;
    .end local v9    # "via":Lgov2/nist/javax2/sip/header/Via;
    .restart local p1    # "response":Ljavax2/sip/message/Response;
    :cond_3
    new-instance v10, Ljavax2/sip/SipException;

    const-string/jumbo v11, "Stack is stopped"

    invoke-direct {v10, v11}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 693
    .restart local v6    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    .restart local v9    # "via":Lgov2/nist/javax2/sip/header/Via;
    :cond_4
    new-instance v10, Ljavax2/sip/SipException;

    const-string/jumbo v11, "No via header in response!"

    invoke-direct {v10, v11}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 696
    .end local p1    # "response":Ljavax2/sip/message/Response;
    .restart local v7    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_5
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v10

    sget-object v11, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    if-eq v10, v11, :cond_0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 698
    new-instance v10, Ljavax2/sip/SipException;

    const-string/jumbo v11, "Transaction exists -- cannot send response statelessly"

    invoke-direct {v10, v11}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 707
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v8    # "transport":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 712
    .restart local v5    # "port":I
    :cond_7
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/header/Via;->getPort()I

    move-result v5

    .line 713
    if-ne v5, v12, :cond_1

    const-string/jumbo v10, "TLS"

    .line 714
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const/16 v5, 0x13c4

    .line 717
    goto :goto_1

    :cond_8
    const/16 v5, 0x13c5

    .line 715
    goto :goto_1

    :cond_9
    const-string/jumbo v10, "["

    .line 722
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 730
    .restart local v1    # "hop":Ljavax2/sip/address/Hop;
    .restart local v3    # "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :cond_a
    :try_start_1
    new-instance v10, Ljavax2/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "whoopsa daisy! no listening point found for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    .end local v3    # "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    :catch_0
    move-exception v0

    .line 737
    .local v0, "ex":Ljava/io/IOException;
    new-instance v10, Ljavax2/sip/SipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public declared-synchronized setListeningPoint(Ljavax2/sip/ListeningPoint;)V
    .locals 5
    .param p1, "listeningPoint"    # Ljavax2/sip/ListeningPoint;

    .prologue
    monitor-enter p0

    .line 746
    if-eqz p1, :cond_0

    .line 747
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/ListeningPointImpl;

    move-object v1, v0

    .line 748
    .local v1, "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    iput-object p0, v1, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 749
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "transport":Ljava/lang/String;
    invoke-interface {p1}, Ljavax2/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->address:Ljava/lang/String;

    .line 751
    invoke-interface {p1}, Ljavax2/sip/ListeningPoint;->getPort()I

    move-result v3

    iput v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->port:I

    .line 753
    iget-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 754
    iget-object v3, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 756
    return-void

    .line 746
    .end local v1    # "lp":Lgov2/nist/javax2/sip/ListeningPointImpl;
    .end local v2    # "transport":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Null listening point"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected stop()V
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->eventScanner:Lgov2/nist/javax2/sip/EventScanner;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/EventScanner;->stop()V

    .line 142
    return-void

    .line 135
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "Exiting provider"

    invoke-interface {v2, v3}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 138
    .local v1, "listeningPoint":Lgov2/nist/javax2/sip/ListeningPointImpl;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/ListeningPointImpl;->removeSipProvider()V

    goto :goto_1
.end method

.method public transactionErrorEvent(Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;)V
    .locals 10
    .param p1, "transactionErrorEvent"    # Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;

    .prologue
    .line 838
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 840
    .local v5, "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 862
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 881
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    .line 903
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 846
    :goto_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 847
    .local v1, "errorObject":Ljava/lang/Object;
    sget-object v4, Ljavax2/sip/Timeout;->TRANSACTION:Ljavax2/sip/Timeout;

    .local v4, "timeout":Ljavax2/sip/Timeout;
    const/4 v2, 0x0

    .line 850
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    instance-of v7, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v7, :cond_2

    move-object v0, v1

    .line 853
    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 854
    .local v0, "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getNextHop()Ljavax2/sip/address/Hop;

    move-result-object v3

    .line 855
    .local v3, "hop":Ljavax2/sip/address/Hop;
    iget-object v7, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getRouter()Ljavax2/sip/address/Router;

    move-result-object v7

    instance-of v7, v7, Lgov2/nist/javax2/sip/address/RouterExt;

    if-nez v7, :cond_3

    .line 858
    :goto_2
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax2/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Timeout;)V

    .line 861
    .end local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v3    # "hop":Ljavax2/sip/address/Hop;
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    :goto_3
    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v1    # "errorObject":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto :goto_0

    .line 843
    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    .end local v4    # "timeout":Ljavax2/sip/Timeout;
    :cond_1
    iget-object v7, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TransportError occured on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 851
    .restart local v1    # "errorObject":Ljava/lang/Object;
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    .restart local v4    # "timeout":Ljavax2/sip/Timeout;
    :cond_2
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax2/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Timeout;)V

    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    goto :goto_3

    .line 856
    .restart local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    .restart local v3    # "hop":Ljavax2/sip/address/Hop;
    :cond_3
    iget-object v7, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getRouter()Ljavax2/sip/address/Router;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/address/RouterExt;

    invoke-interface {v7, v3}, Lgov2/nist/javax2/sip/address/RouterExt;->transactionTimeout(Ljavax2/sip/address/Hop;)V

    goto :goto_2

    .line 864
    .end local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    .end local v3    # "hop":Ljavax2/sip/address/Hop;
    .end local v4    # "timeout":Ljavax2/sip/Timeout;
    :cond_4
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 865
    .restart local v1    # "errorObject":Ljava/lang/Object;
    sget-object v4, Ljavax2/sip/Timeout;->TRANSACTION:Ljavax2/sip/Timeout;

    .restart local v4    # "timeout":Ljavax2/sip/Timeout;
    const/4 v2, 0x0

    .line 868
    .restart local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    instance-of v7, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v7, :cond_5

    move-object v0, v1

    .line 871
    check-cast v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 872
    .restart local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getNextHop()Ljavax2/sip/address/Hop;

    move-result-object v3

    .line 873
    .restart local v3    # "hop":Ljavax2/sip/address/Hop;
    iget-object v7, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getRouter()Ljavax2/sip/address/Router;

    move-result-object v7

    instance-of v7, v7, Lgov2/nist/javax2/sip/address/RouterExt;

    if-nez v7, :cond_6

    .line 877
    :goto_4
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax2/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Timeout;)V

    .line 879
    .end local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v3    # "hop":Ljavax2/sip/address/Hop;
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    :goto_5
    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v1    # "errorObject":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .line 869
    .restart local v1    # "errorObject":Ljava/lang/Object;
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    :cond_5
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax2/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Timeout;)V

    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    goto :goto_5

    .line 874
    .restart local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    .restart local v3    # "hop":Ljavax2/sip/address/Hop;
    :cond_6
    iget-object v7, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getRouter()Ljavax2/sip/address/Router;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/address/RouterExt;

    invoke-interface {v7, v3}, Lgov2/nist/javax2/sip/address/RouterExt;->transactionTimeout(Ljavax2/sip/address/Hop;)V

    goto :goto_4

    .line 886
    .end local v0    # "clientTx":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    .end local v3    # "hop":Ljavax2/sip/address/Hop;
    .end local v4    # "timeout":Ljavax2/sip/Timeout;
    :cond_7
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "errorObject":Ljava/lang/Object;
    move-object v6, v1

    .line 887
    check-cast v6, Ljavax2/sip/Transaction;

    .line 889
    .local v6, "tx":Ljavax2/sip/Transaction;
    invoke-interface {v6}, Ljavax2/sip/Transaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v7

    if-nez v7, :cond_8

    .line 893
    :goto_6
    sget-object v4, Ljavax2/sip/Timeout;->RETRANSMIT:Ljavax2/sip/Timeout;

    .restart local v4    # "timeout":Ljavax2/sip/Timeout;
    const/4 v2, 0x0

    .line 896
    .restart local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    instance-of v7, v1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    if-nez v7, :cond_9

    .line 899
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax2/sip/ClientTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Timeout;)V

    .line 901
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    :goto_7
    check-cast v1, Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .end local v1    # "errorObject":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov2/nist/javax2/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    .end local v4    # "timeout":Ljavax2/sip/Timeout;
    .restart local v1    # "errorObject":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v7, "Unexpected event !"

    .line 890
    iget-object v8, p0, Lgov2/nist/javax2/sip/SipProviderImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    invoke-static {v7, v8}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov2/nist/core/StackLogger;)V

    goto :goto_6

    .line 897
    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    .restart local v4    # "timeout":Ljavax2/sip/Timeout;
    :cond_9
    new-instance v2, Ljavax2/sip/TimeoutEvent;

    .end local v2    # "ev":Ljavax2/sip/TimeoutEvent;
    move-object v7, v1

    check-cast v7, Ljavax2/sip/ServerTransaction;

    invoke-direct {v2, p0, v7, v4}, Ljavax2/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Timeout;)V

    .local v2, "ev":Ljavax2/sip/TimeoutEvent;
    goto :goto_7
.end method
