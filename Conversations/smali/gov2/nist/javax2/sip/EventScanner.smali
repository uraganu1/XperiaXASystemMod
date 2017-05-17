.class Lgov2/nist/javax2/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private eventMutex:[I

.field private isStopped:Z

.field private pendingEvents:Ljava/util/LinkedList;

.field private refCount:I

.field private sipStack:Lgov2/nist/javax2/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/SipStackImpl;)V
    .locals 3
    .param p1, "sipStackImpl"    # Lgov2/nist/javax2/sip/SipStackImpl;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    .line 68
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    .local v0, "myThread":Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 74
    iput-object p1, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    const-string/jumbo v1, "EventScannerThread"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method


# virtual methods
.method public addEvent(Lgov2/nist/javax2/sip/EventWrapper;)V
    .locals 3
    .param p1, "eventWrapper"    # Lgov2/nist/javax2/sip/EventWrapper;

    .prologue
    .line 83
    iget-object v0, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public deliverEvent(Lgov2/nist/javax2/sip/EventWrapper;)V
    .locals 19
    .param p1, "eventWrapper"    # Lgov2/nist/javax2/sip/EventWrapper;

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget-object v8, v0, Lgov2/nist/javax2/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 129
    .local v8, "sipEvent":Ljava/util/EventObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    :goto_0
    const/4 v9, 0x0

    .line 134
    .local v9, "sipListener":Ljavax2/sip/SipListener;
    instance-of v15, v8, Ljavax2/sip/IOExceptionEvent;

    if-eqz v15, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v9

    .line 140
    .local v9, "sipListener":Ljavax2/sip/SipListener;
    :goto_1
    instance-of v15, v8, Ljavax2/sip/RequestEvent;

    if-nez v15, :cond_3

    .line 253
    instance-of v15, v8, Ljavax2/sip/ResponseEvent;

    if-nez v15, :cond_27

    .line 339
    instance-of v15, v8, Ljavax2/sip/TimeoutEvent;

    if-nez v15, :cond_38

    .line 351
    instance-of v15, v8, Lgov2/nist/javax2/sip/DialogTimeoutEvent;

    if-nez v15, :cond_39

    .line 365
    instance-of v15, v8, Ljavax2/sip/IOExceptionEvent;

    if-nez v15, :cond_3a

    .line 372
    instance-of v15, v8, Ljavax2/sip/TransactionTerminatedEvent;

    if-nez v15, :cond_3b

    .line 399
    instance-of v15, v8, Ljavax2/sip/DialogTerminatedEvent;

    if-nez v15, :cond_3d

    .line 412
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_3e

    .line 416
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    .end local v9    # "sipListener":Ljavax2/sip/SipListener;
    :cond_0
    :goto_2
    return-void

    .line 130
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "sipEvent = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "source = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .local v9, "sipListener":Ljavax2/sip/SipListener;
    :cond_2
    invoke-virtual {v8}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgov2/nist/javax2/sip/SipProviderImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipProviderImpl;->getSipListener()Ljavax2/sip/SipListener;

    move-result-object v9

    .local v9, "sipListener":Ljavax2/sip/SipListener;
    goto :goto_1

    .line 144
    :cond_3
    :try_start_0
    move-object v0, v8

    check-cast v0, Ljavax2/sip/RequestEvent;

    move-object v15, v0

    invoke-virtual {v15}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v10

    check-cast v10, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 146
    .local v10, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_8

    .line 162
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lgov2/nist/javax2/sip/SipStackImpl;->findTransaction(Lgov2/nist/javax2/sip/message/SIPMessage;Z)Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-result-object v13

    check-cast v13, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 165
    .local v13, "tx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    if-nez v13, :cond_a

    .line 188
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15, v10}, Lgov2/nist/javax2/sip/SipStackImpl;->findPendingTransaction(Lgov2/nist/javax2/sip/message/SIPRequest;)Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-result-object v15

    if-nez v15, :cond_15

    .line 197
    move-object/from16 v0, p1

    iget-object v12, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v12, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 198
    .local v12, "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15, v12}, Lgov2/nist/javax2/sip/SipStackImpl;->putPendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 202
    .end local v12    # "st":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_5
    :goto_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v10, v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_1c

    .line 212
    :goto_5
    if-nez v9, :cond_1d

    .line 214
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 218
    :goto_7
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_1f

    .line 231
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_20

    .line 237
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :goto_9
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_21

    .line 242
    :cond_7
    :goto_a
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_22

    .line 244
    :goto_b
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ACK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 249
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    sget-object v16, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual/range {v15 .. v16}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_2

    .line 147
    .end local v13    # "tx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deliverEvent : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " transaction "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " sipEvent.serverTx = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v8

    check-cast v0, Ljavax2/sip/RequestEvent;

    move-object v15, v0

    invoke-virtual {v15}, Ljavax2/sip/RequestEvent;->getServerTransaction()Ljavax2/sip/ServerTransaction;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 249
    .end local v10    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    :catchall_0
    move-exception v15

    move-object/from16 v16, v15

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_23

    .line 237
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :goto_c
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_24

    .line 242
    :cond_9
    :goto_d
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_25

    .line 244
    :goto_e
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "ACK"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26

    .line 249
    :goto_f
    throw v16

    .line 165
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .restart local v10    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .restart local v13    # "tx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    :cond_a
    :try_start_3
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v15

    if-nez v15, :cond_4

    .line 174
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ACK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 184
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-nez v15, :cond_10

    .line 231
    :goto_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_11

    .line 237
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :goto_12
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_12

    .line 242
    :cond_c
    :goto_13
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_13

    .line 244
    :goto_14
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ACK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 249
    :goto_15
    return-void

    .line 174
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_d
    :try_start_4
    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v13}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getLastResponse()Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v15

    div-int/lit8 v15, v15, 0x64

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 179
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    const-string/jumbo v16, "Detected broken client sending ACK with same branch! Passing..."

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 174
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_10

    .line 185
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "transaction already exists! "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_11

    .line 232
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Done processing Message "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    check-cast v8, Ljavax2/sip/RequestEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v15

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 237
    :cond_12
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 239
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_13

    .line 243
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lgov2/nist/javax2/sip/SipStackImpl;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_14

    .line 249
    :cond_14
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    sget-object v16, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual/range {v15 .. v16}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_15

    .line 189
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    if-nez v15, :cond_17

    .line 231
    :goto_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_18

    .line 237
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :goto_17
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_19

    .line 242
    :cond_16
    :goto_18
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-nez v15, :cond_1a

    .line 244
    :goto_19
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ACK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    .line 249
    :goto_1a
    return-void

    .line 190
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_17
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    const-string/jumbo v16, "transaction already exists!!"

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_16

    .line 232
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Done processing Message "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    check-cast v8, Ljavax2/sip/RequestEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v15

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_17

    .line 237
    :cond_19
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 239
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto :goto_18

    .line 243
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lgov2/nist/javax2/sip/SipStackImpl;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto :goto_19

    .line 249
    :cond_1b
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    sget-object v16, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    invoke-virtual/range {v15 .. v16}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto :goto_1a

    .line 207
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_1c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Calling listener "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Calling listener "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 229
    :catch_0
    move-exception v5

    .line 228
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_8

    .line 212
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1d
    :try_start_9
    move-object v0, v8

    check-cast v0, Ljavax2/sip/RequestEvent;

    move-object v15, v0

    invoke-interface {v9, v15}, Ljavax2/sip/SipListener;->processRequest(Ljavax2/sip/RequestEvent;)V

    goto/16 :goto_6

    .line 215
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Done processing Message "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 220
    :cond_1f
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 221
    .local v4, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 232
    .end local v4    # "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Done processing Message "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    check-cast v8, Ljavax2/sip/RequestEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v15

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 237
    :cond_21
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 239
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_a

    .line 243
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lgov2/nist/javax2/sip/SipStackImpl;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_b

    .line 232
    .end local v10    # "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v13    # "tx":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Done processing Message "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    check-cast v8, Ljavax2/sip/RequestEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax2/sip/RequestEvent;->getRequest()Ljavax2/sip/message/Request;

    move-result-object v15

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    check-cast v15, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 237
    :cond_24
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 239
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_d

    .line 243
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v15, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lgov2/nist/javax2/sip/SipStackImpl;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_e

    .line 249
    :cond_26
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    sget-object v17, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setState(Ljavax2/sip/TransactionState;)V

    goto/16 :goto_f

    .line 255
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_27
    :try_start_a
    move-object v0, v8

    check-cast v0, Ljavax2/sip/ResponseEvent;

    move-object v6, v0

    .line 256
    .local v6, "responseEvent":Ljavax2/sip/ResponseEvent;
    invoke-virtual {v6}, Ljavax2/sip/ResponseEvent;->getResponse()Ljavax2/sip/message/Response;

    move-result-object v11

    check-cast v11, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 257
    .local v11, "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    invoke-virtual {v6}, Ljavax2/sip/ResponseEvent;->getDialog()Ljavax2/sip/Dialog;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/stack/SIPDialog;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 259
    .local v7, "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_2a

    .line 264
    :goto_1b
    if-nez v9, :cond_2c

    .line 277
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :goto_1c
    if-nez v7, :cond_2e

    .line 301
    :goto_1d
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "INVITE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v15

    if-nez v15, :cond_34

    .line 322
    :cond_28
    :goto_1e
    :try_start_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    check-cast v3, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 323
    .local v3, "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    if-nez v3, :cond_36

    .line 334
    :cond_29
    :goto_1f
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 335
    move-object/from16 v0, p1

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_2

    .line 261
    .end local v3    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_2a
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Calling listener for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1b

    .line 318
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :catch_1
    move-exception v5

    .line 317
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1e

    .line 335
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "responseEvent":Ljavax2/sip/ResponseEvent;
    .end local v7    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v11    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :catchall_1
    move-exception v15

    .line 334
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v16, v0

    if-nez v16, :cond_37

    .line 335
    :cond_2b
    :goto_20
    throw v15

    .line 265
    .restart local v6    # "responseEvent":Ljavax2/sip/ResponseEvent;
    .restart local v7    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .restart local v11    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_2c
    :try_start_f
    move-object/from16 v0, p1

    iget-object v14, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 266
    .local v14, "tx":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    if-nez v14, :cond_2d

    .line 269
    :goto_21
    check-cast v8, Ljavax2/sip/ResponseEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax2/sip/SipListener;->processResponse(Ljavax2/sip/ResponseEvent;)V

    goto/16 :goto_1c

    .line 267
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_2d
    invoke-virtual {v14}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->setPassToListener()V

    goto :goto_21

    .line 277
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    .end local v14    # "tx":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    :cond_2e
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v15

    if-nez v15, :cond_31

    :cond_2f
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v15

    const/16 v16, 0x1e1

    move/from16 v0, v16

    if-ne v15, v0, :cond_32

    .line 281
    :cond_30
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_33

    .line 285
    :goto_22
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->doDeferredDelete()V

    goto/16 :goto_1d

    .line 277
    :cond_31
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v15

    sget-object v16, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    invoke-virtual/range {v15 .. v16}, Ljavax2/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    goto/16 :goto_1d

    :cond_32
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v15

    const/16 v16, 0x198

    move/from16 v0, v16

    if-eq v15, v0, :cond_30

    goto/16 :goto_1d

    .line 282
    :cond_33
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    const-string/jumbo v16, "Removing dialog on 408 or 481 response"

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_22

    .line 301
    :cond_34
    if-eqz v7, :cond_28

    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_35

    .line 311
    :goto_23
    invoke-virtual {v11}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V

    goto/16 :goto_1e

    .line 304
    :cond_35
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Warning! unacknowledged dialog. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/stack/SIPDialog;->getState()Ljavax2/sip/DialogState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_23

    .line 323
    .restart local v3    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    :cond_36
    :try_start_10
    sget-object v15, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_29

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v15

    if-eqz v15, :cond_29

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "INVITE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_29

    .line 330
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1f

    .line 334
    .end local v3    # "ct":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    .end local v6    # "responseEvent":Ljavax2/sip/ResponseEvent;
    .end local v7    # "sipDialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    .end local v11    # "sipResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_37
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->passToListener()Z

    move-result v16

    if-eqz v16, :cond_2b

    .line 335
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_20

    .line 343
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_38
    if-eqz v9, :cond_0

    :try_start_11
    check-cast v8, Ljavax2/sip/TimeoutEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax2/sip/SipListener;->processTimeout(Ljavax2/sip/TimeoutEvent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_2

    .line 349
    :catch_2
    move-exception v5

    .line 348
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 354
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_39
    if-eqz v9, :cond_0

    :try_start_12
    instance-of v15, v9, Lgov2/nist/javax2/sip/SipListenerExt;

    if-eqz v15, :cond_0

    .line 355
    check-cast v9, Lgov2/nist/javax2/sip/SipListenerExt;

    .end local v9    # "sipListener":Ljavax2/sip/SipListener;
    check-cast v8, Lgov2/nist/javax2/sip/DialogTimeoutEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Lgov2/nist/javax2/sip/SipListenerExt;->processDialogTimeout(Lgov2/nist/javax2/sip/DialogTimeoutEvent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_2

    .line 363
    :catch_3
    move-exception v5

    .line 362
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 367
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .restart local v9    # "sipListener":Ljavax2/sip/SipListener;
    :cond_3a
    if-eqz v9, :cond_0

    .line 368
    :try_start_13
    check-cast v8, Ljavax2/sip/IOExceptionEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax2/sip/SipListener;->processIOException(Ljavax2/sip/IOExceptionEvent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_2

    .line 371
    :catch_4
    move-exception v5

    .line 370
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 374
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_3b
    :try_start_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-nez v15, :cond_3c

    .line 389
    :goto_24
    if-eqz v9, :cond_0

    .line 390
    check-cast v8, Ljavax2/sip/TransactionTerminatedEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax2/sip/SipListener;->processTransactionTerminated(Ljavax2/sip/TransactionTerminatedEvent;)V
    :try_end_14
    .catch Ljava/lang/AbstractMethodError; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_2

    .line 398
    :catch_5
    move-exception v2

    .line 393
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    const-string/jumbo v16, "Unable to call sipListener.processTransactionTerminated"

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_3c
    :try_start_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    const-string/jumbo v16, "About to deliver transactionTerminatedEvent"

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "tx = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v8

    check-cast v0, Ljavax2/sip/TransactionTerminatedEvent;

    move-object v15, v0

    invoke-virtual {v15}, Ljavax2/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax2/sip/ClientTransaction;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "tx = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v8

    check-cast v0, Ljavax2/sip/TransactionTerminatedEvent;

    move-object v15, v0

    invoke-virtual {v15}, Ljavax2/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax2/sip/ServerTransaction;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_24

    .line 398
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    :catch_6
    move-exception v5

    .line 397
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 401
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_3d
    if-eqz v9, :cond_0

    .line 402
    :try_start_16
    check-cast v8, Ljavax2/sip/DialogTerminatedEvent;

    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax2/sip/SipListener;->processDialogTerminated(Ljavax2/sip/DialogTerminatedEvent;)V
    :try_end_16
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_2

    .line 410
    :catch_7
    move-exception v2

    .line 405
    .restart local v2    # "ame":Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    const-string/jumbo v16, "Unable to call sipListener.processDialogTerminated"

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 410
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :catch_8
    move-exception v5

    .line 409
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    invoke-interface {v15, v5}, Lgov2/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 413
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v15, v0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v15}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "bad event"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov2/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 120
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lgov2/nist/javax2/sip/EventScanner;->isStopped:Z

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    .line 122
    iget-object v0, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v1

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public incrementRefcount()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 63
    :try_start_0
    iget v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 427
    :try_start_0
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/core/ThreadAuditor;->addCurrentThread()Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v5

    .local v5, "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :cond_0
    const/4 v1, 0x0

    .line 434
    .local v1, "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    iget-object v7, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :goto_0
    :try_start_1
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 467
    iget-object v2, p0, Lgov2/nist/javax2/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 468
    .local v2, "eventsToDeliver":Ljava/util/LinkedList;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 469
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    :try_start_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 471
    .end local v1    # "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    .local v4, "iterator":Ljava/util/ListIterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 472
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/EventWrapper;

    .line 473
    .local v1, "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_b

    .line 478
    :goto_2
    :try_start_3
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/EventScanner;->deliverEvent(Lgov2/nist/javax2/sip/EventWrapper;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 481
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v7, "Unexpected exception caught while delivering event -- carrying on bravely"

    invoke-interface {v6, v7, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    .end local v2    # "eventsToDeliver":Ljava/util/LinkedList;
    .end local v4    # "iterator":Ljava/util/ListIterator;
    .end local v5    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v6

    .line 490
    iget-object v7, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_c

    .line 492
    :cond_2
    :goto_3
    throw v6

    .line 440
    .local v1, "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    .restart local v5    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :cond_3
    :try_start_5
    iget-boolean v6, p0, Lgov2/nist/javax2/sip/EventScanner;->isStopped:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v6, :cond_5

    .line 450
    :try_start_6
    invoke-virtual {v5}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 453
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v5}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 459
    :catch_1
    move-exception v3

    .line 456
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_7
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 458
    :goto_4
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 490
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 492
    :cond_4
    :goto_5
    return-void

    .line 441
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_8
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 443
    :goto_6
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 490
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 492
    :cond_6
    :goto_7
    return-void

    .line 442
    :cond_7
    :try_start_9
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v8, "Stopped event scanner!!"

    invoke-interface {v6, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_6

    .line 469
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 491
    :cond_8
    iget-boolean v6, p0, Lgov2/nist/javax2/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_6

    .line 492
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v7, "Event scanner exited abnormally"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto :goto_7

    .line 457
    .restart local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_9
    :try_start_b
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v8, "Interrupted!"

    invoke-interface {v6, v8}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 491
    :cond_a
    iget-boolean v6, p0, Lgov2/nist/javax2/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_4

    .line 492
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    const-string/jumbo v7, "Event scanner exited abnormally"

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto :goto_5

    .line 474
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .local v1, "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    .restart local v2    # "eventsToDeliver":Ljava/util/LinkedList;
    .restart local v4    # "iterator":Ljava/util/ListIterator;
    :cond_b
    :try_start_c
    iget-object v6, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Processing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "nevents "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 491
    .end local v1    # "eventWrapper":Lgov2/nist/javax2/sip/EventWrapper;
    .end local v2    # "eventsToDeliver":Ljava/util/LinkedList;
    .end local v4    # "iterator":Ljava/util/ListIterator;
    .end local v5    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :cond_c
    iget-boolean v7, p0, Lgov2/nist/javax2/sip/EventScanner;->isStopped:Z

    if-nez v7, :cond_2

    .line 492
    iget-object v7, p0, Lgov2/nist/javax2/sip/EventScanner;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    const-string/jumbo v8, "Event scanner exited abnormally"

    invoke-interface {v7, v8}, Lgov2/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    monitor-enter v1

    .line 104
    :try_start_0
    iget v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    if-gtz v0, :cond_0

    .line 106
    :goto_0
    iget v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    if-eqz v0, :cond_1

    .line 111
    :goto_1
    monitor-exit v1

    .line 112
    return-void

    .line 104
    :cond_0
    iget v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov2/nist/javax2/sip/EventScanner;->refCount:I

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lgov2/nist/javax2/sip/EventScanner;->isStopped:Z

    .line 108
    iget-object v0, p0, Lgov2/nist/javax2/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
