.class public final Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
.super Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
.source "FtHttpResumeDownload.java"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[BZZZJ)V
    .locals 17
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileUri"    # Landroid/net/Uri;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "thumbnail"    # [B
    .param p6, "isGroup"    # Z
    .param p7, "isNetworkPause"    # Z
    .param p8, "isFileAccepted"    # Z
    .param p9, "fileValidity"    # J

    .prologue
    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v5, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;-><init>(Ljava/lang/String;Landroid/net/Uri;[BLcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V
    .locals 2
    .param p1, "cursor"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V

    .line 101
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getInUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->url:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[BLcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V
    .locals 20
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # [B
    .param p4, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p5, "messageId"    # Ljava/lang/String;
    .param p6, "contact"    # Ljava/lang/String;
    .param p7, "displayName"    # Ljava/lang/String;
    .param p8, "chatId"    # Ljava/lang/String;
    .param p9, "sessionId"    # Ljava/lang/String;
    .param p10, "chatSessionId"    # Ljava/lang/String;
    .param p11, "isGroup"    # Z
    .param p12, "isNetworkPause"    # Z
    .param p13, "isFileAccepted"    # Z
    .param p14, "fileValidity"    # J

    .prologue
    .line 86
    sget-object v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->INCOMING:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

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

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move-wide/from16 v18, p14

    invoke-direct/range {v2 .. v19}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V

    .line 89
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->url:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->url:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1
    if-eqz p5, :cond_0

    .line 92
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FtHttpResumeDownload [file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getMimetype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getMsgId()Ljava/lang/String;

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
