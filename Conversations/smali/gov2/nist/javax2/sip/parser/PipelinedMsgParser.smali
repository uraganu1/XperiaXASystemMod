.class public final Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;
.super Ljava/lang/Object;
.source "PipelinedMsgParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static uid:I


# instance fields
.field private maxMessageSize:I

.field private mythread:Ljava/lang/Thread;

.field private rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

.field protected sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

.field private sizeCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    sput v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->uid:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/parser/SIPMessageListener;Lgov2/nist/javax2/sip/parser/Pipeline;I)V
    .locals 1
    .param p1, "mhandler"    # Lgov2/nist/javax2/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov2/nist/javax2/sip/parser/Pipeline;
    .param p3, "maxMsgSize"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;-><init>(Lgov2/nist/javax2/sip/parser/SIPMessageListener;Lgov2/nist/javax2/sip/parser/Pipeline;ZI)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/parser/SIPMessageListener;Lgov2/nist/javax2/sip/parser/Pipeline;ZI)V
    .locals 3
    .param p1, "sipMessageListener"    # Lgov2/nist/javax2/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov2/nist/javax2/sip/parser/Pipeline;
    .param p3, "debug"    # Z
    .param p4, "maxMessageSize"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;-><init>()V

    .line 116
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    .line 117
    iput-object p2, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    .line 118
    iput p4, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    .line 119
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    .line 120
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PipelineThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->getNewUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private static declared-synchronized getNewUid()I
    .locals 3

    .prologue
    const-class v1, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    monitor-enter v1

    .line 101
    :try_start_0
    sget v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->uid:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 186
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "retval":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "crlfBuffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "i":I
    const/4 v4, -0x1

    .line 191
    if-eq v2, v4, :cond_4

    .line 194
    int-to-char v4, v2

    int-to-char v0, v4

    .line 196
    .local v0, "ch":C
    iget v4, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    if-gtz v4, :cond_5

    .line 200
    :cond_1
    if-ne v0, v7, :cond_6

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 205
    :goto_0
    if-ne v0, v6, :cond_0

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eq v4, v5, :cond_8

    .line 212
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eq v4, v5, :cond_9

    .line 215
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 192
    .end local v0    # "ch":C
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "End of stream"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    .restart local v0    # "ch":C
    :cond_5
    iget v4, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sizeCounter:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sizeCounter:I

    .line 198
    iget v4, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sizeCounter:I

    if-gtz v4, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Max size exceeded!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 206
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 212
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 160
    new-instance v1, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;-><init>()V

    .line 162
    .local v1, "p":Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    iput-object v2, v1, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    .line 163
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    iput-object v2, v1, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    .line 164
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, "mythread":Ljava/lang/Thread;
    const-string/jumbo v2, "PipelineThread"

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 166
    return-object v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processInput()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v9, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    .line 233
    .local v9, "inputStream":Lgov2/nist/javax2/sip/parser/Pipeline;
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sizeCounter:I

    .line 235
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v8, "inputBuffer":Ljava/lang/StringBuffer;
    sget-boolean v17, Lgov2/nist/core/Debug;->parserDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_4

    :goto_1
    const/4 v11, 0x0

    .line 244
    .local v11, "line2":Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .local v10, "line1":Ljava/lang/String;
    const-string/jumbo v17, "\n"

    .line 246
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string/jumbo v17, "\r\n"

    .line 251
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-nez v17, :cond_6

    .line 276
    :try_start_2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->startTimer()V

    const-string/jumbo v17, "Reading Input Stream"

    .line 280
    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .end local v11    # "line2":Ljava/lang/String;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, "line2":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v17

    if-eqz v17, :cond_2

    .line 295
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V

    .line 296
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    new-instance v16, Lgov2/nist/javax2/sip/parser/StringMsgParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>(Lgov2/nist/javax2/sip/parser/ParseExceptionListener;)V

    .line 298
    .local v16, "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lgov2/nist/javax2/sip/parser/StringMsgParser;->readBody:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v15, 0x0

    .line 302
    .local v15, "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    :try_start_5
    sget-boolean v17, Lgov2/nist/core/Debug;->debug:Z

    if-nez v17, :cond_a

    .line 305
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov2/nist/javax2/sip/message/SIPMessage;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v15

    .line 306
    .local v15, "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    if-eqz v15, :cond_b

    .line 316
    :try_start_6
    sget-boolean v17, Lgov2/nist/core/Debug;->debug:Z

    if-nez v17, :cond_c

    .line 319
    :goto_4
    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/ContentLength;

    .local v2, "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    const/4 v3, 0x0

    .line 321
    .local v3, "contentLength":I
    if-nez v2, :cond_d

    const/4 v3, 0x0

    .line 327
    :goto_5
    sget-boolean v17, Lgov2/nist/core/Debug;->debug:Z

    if-nez v17, :cond_e

    .line 331
    :goto_6
    if-eqz v3, :cond_f

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 334
    :cond_3
    new-array v12, v3, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .local v12, "message_body":[B
    const/4 v13, 0x0

    .line 336
    .local v13, "nread":I
    :goto_7
    if-lt v13, v3, :cond_11

    .line 362
    :goto_8
    :try_start_7
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v12, v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setMessageContent([BZI)V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 371
    .end local v12    # "message_body":[B
    .end local v13    # "nread":I
    :goto_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v17, :cond_0

    .line 373
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lgov2/nist/javax2/sip/parser/SIPMessageListener;->processMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 378
    :catch_0
    move-exception v6

    .line 383
    :goto_a
    :try_start_a
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 388
    :goto_b
    return-void

    .end local v2    # "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    .end local v3    # "contentLength":I
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v15    # "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    .end local v16    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :cond_4
    :try_start_b
    const-string/jumbo v17, "Starting parse!"

    .line 237
    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 387
    .end local v8    # "inputBuffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v17

    .line 383
    :try_start_c
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 386
    :goto_c
    throw v17

    .line 247
    .restart local v8    # "inputBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "line1":Ljava/lang/String;
    .local v11, "line2":Ljava/lang/String;
    :cond_5
    :try_start_d
    sget-boolean v17, Lgov2/nist/core/Debug;->parserDebug:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "Discarding blank line. "

    .line 248
    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 267
    .end local v10    # "line1":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 269
    .local v5, "ex":Ljava/io/IOException;
    :try_start_e
    invoke-static {v5}, Lgov2/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 383
    :try_start_f
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 386
    :goto_d
    return-void

    .line 252
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v10    # "line1":Ljava/lang/String;
    :cond_6
    :try_start_10
    sget-boolean v17, Lgov2/nist/core/Debug;->parserDebug:Z

    if-nez v17, :cond_8

    .line 258
    :goto_e
    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->initializeCounter()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 264
    :cond_7
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    check-cast v17, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    const-string/jumbo v18, "PipelinedMsgParser: Single CRLF received"

    invoke-virtual/range {v17 .. v18}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->releaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v17, "CRLF Received"

    .line 253
    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 259
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    check-cast v17, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->cancelPingKeepAliveTimeoutTaskIfStarted()V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov2/nist/javax2/sip/parser/SIPMessageListener;

    move-object/from16 v17, v0

    check-cast v17, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->startKeepaliveTimer()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_f

    .line 386
    .end local v10    # "line1":Ljava/lang/String;
    .restart local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 385
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_d

    .line 291
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v11    # "line2":Ljava/lang/String;
    .restart local v10    # "line1":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 287
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V

    .line 288
    invoke-static {v5}, Lgov2/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 383
    :try_start_12
    invoke-virtual {v9}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    .line 386
    :goto_10
    return-void

    :catch_4
    move-exception v4

    .line 385
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_10

    .line 303
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .local v11, "line2":Ljava/lang/String;
    .local v15, "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    .restart local v16    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :cond_a
    :try_start_13
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "About to parse : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 314
    .end local v15    # "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    :catch_5
    move-exception v7

    .local v7, "ex":Ljava/text/ParseException;
    :try_start_14
    const-string/jumbo v17, "Detected a parse error"

    .line 312
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lgov2/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    .line 307
    .end local v7    # "ex":Ljava/text/ParseException;
    .local v15, "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    :cond_b
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V
    :try_end_15
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0

    :cond_c
    :try_start_16
    const-string/jumbo v17, "Completed parsing message"

    .line 317
    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 322
    .restart local v2    # "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    .restart local v3    # "contentLength":I
    :cond_d
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v3

    goto/16 :goto_5

    .line 328
    :cond_e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "contentLength "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov2/nist/core/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 332
    :cond_f
    invoke-virtual {v15}, Lgov2/nist/javax2/sip/message/SIPMessage;->removeContent()V

    goto/16 :goto_9

    .line 333
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->sizeCounter:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v3, v0, :cond_3

    goto/16 :goto_9

    .line 343
    .restart local v12    # "message_body":[B
    .restart local v13    # "nread":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->startTimer()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 346
    sub-int v17, v3, v13

    :try_start_17
    move/from16 v0, v17

    invoke-virtual {v9, v12, v13, v0}, Lgov2/nist/javax2/sip/parser/Pipeline;->read([BII)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v14

    .line 348
    .local v14, "readlength":I
    if-gtz v14, :cond_12

    .line 358
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V

    goto/16 :goto_8

    .line 349
    :cond_12
    add-int/2addr v13, v14

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_7

    .line 359
    .end local v14    # "readlength":I
    :catch_6
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_19
    const-string/jumbo v17, "Exception Reading Content"

    .line 354
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lgov2/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 358
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V

    goto/16 :goto_8

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov2/nist/javax2/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov2/nist/javax2/sip/parser/Pipeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lgov2/nist/javax2/sip/parser/Pipeline;->stopTimer()V

    throw v17

    .line 367
    :catch_7
    move-exception v7

    .restart local v7    # "ex":Ljava/text/ParseException;
    const-string/jumbo v17, "Detected a parse error"

    .line 365
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lgov2/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_a

    .line 386
    .end local v7    # "ex":Ljava/text/ParseException;
    .end local v12    # "message_body":[B
    .end local v13    # "nread":I
    :catch_8
    move-exception v4

    .line 385
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_b

    .line 386
    .end local v2    # "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    .end local v3    # "contentLength":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v15    # "sipMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    .end local v16    # "smp":Lgov2/nist/javax2/sip/parser/StringMsgParser;
    :catch_9
    move-exception v4

    .line 385
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_c
.end method
