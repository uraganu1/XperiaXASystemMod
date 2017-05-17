.class public Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
.super Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
.source "FtHttpResumeUpload.java"


# instance fields
.field private final tid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BZZZJ)V
    .locals 19
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "tid"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "thumbnail"    # [B
    .param p6, "isGroup"    # Z
    .param p7, "isNetworkPause"    # Z
    .param p8, "isFileAccepted"    # Z
    .param p9, "fileValidity"    # J

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    if-nez p6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContributionID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-wide/from16 v16, p9

    invoke-direct/range {v1 .. v17}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;-><init>(Ljava/lang/String;Landroid/net/Uri;[BLcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V

    .line 66
    return-void

    :cond_0
    const/4 v8, 0x0

    .line 60
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V
    .locals 2
    .param p1, "cursor"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V

    .line 104
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getOuTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->tid:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->tid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null TID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[BLcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V
    .locals 21
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # [B
    .param p4, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p5, "messageId"    # Ljava/lang/String;
    .param p6, "tid"    # Ljava/lang/String;
    .param p7, "contact"    # Ljava/lang/String;
    .param p8, "displayName"    # Ljava/lang/String;
    .param p9, "chatId"    # Ljava/lang/String;
    .param p10, "sessionId"    # Ljava/lang/String;
    .param p11, "chatSessionId"    # Ljava/lang/String;
    .param p12, "isGroup"    # Z
    .param p13, "isNetworkPause"    # Z
    .param p14, "isFileAccepted"    # Z
    .param p15, "fileValidity"    # J

    .prologue
    .line 89
    sget-object v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->OUTGOING:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move-wide/from16 v18, p15

    invoke-direct/range {v2 .. v19}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V

    .line 92
    if-eqz p6, :cond_0

    .line 94
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->tid:Ljava/lang/String;

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Null tid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FtHttpResumeUpload [tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
