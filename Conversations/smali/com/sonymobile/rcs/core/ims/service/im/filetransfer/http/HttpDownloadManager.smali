.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;
.source "HttpDownloadManager.java"


# instance fields
.field private content:Lcom/sonymobile/rcs/core/content/MmContent;

.field private contentName:Ljava/lang/String;

.field file:Ljava/io/File;

.field private fileUri:Landroid/net/Uri;

.field private fileUrl:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field mCalclength:I

.field private retryCount:I

.field streamForFile:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V
    .locals 3
    .param p1, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p2, "listener"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;Ljava/lang/String;)V

    .line 61
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    .line 71
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    .line 81
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    .line 86
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 139
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p2, "listener"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;Ljava/lang/String;)V

    .line 61
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    .line 66
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    .line 71
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    .line 81
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    .line 86
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 104
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    .line 105
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->contentName:Ljava/lang/String;

    .line 108
    if-eqz p4, :cond_2

    .line 118
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    .line 123
    :cond_0
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_1
    return-void

    .line 109
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->contentName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->createFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    .line 110
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "mime":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->createDirectoryIfDoesNotExist(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Creating a new file with URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to store the downloaded file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v1    # "mime":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Could not create stream, file does not exists."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private closeStreamForFile()V
    .locals 3

    .prologue
    .line 534
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 537
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v1, 0x0

    .line 538
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Exception closing stream for file"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFile(Ljava/net/URL;Ljava/util/Map;)Z
    .locals 22
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 246
    .local v9, "readfailure":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 253
    invoke-virtual/range {p0 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->openHttpConnection(Ljava/net/URL;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v16

    .line 254
    .local v16, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v15

    .line 255
    .local v15, "statusCode":I
    invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v17

    if-nez v17, :cond_2

    .line 259
    :goto_0
    sget-boolean v17, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v17, :cond_3

    .line 262
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->intValue()I

    move-result v6

    .local v6, "localFileLength":I
    const/4 v14, 0x0

    .line 265
    .local v14, "receivedBytes":I
    sparse-switch v15, :sswitch_data_0

    .line 286
    const/16 v17, 0x0

    return v17

    .line 247
    .end local v6    # "localFileLength":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v14    # "receivedBytes":I
    .end local v15    # "statusCode":I
    .end local v16    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v17

    if-nez v17, :cond_1

    .line 250
    :goto_2
    const/16 v17, 0x0

    return v17

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Stream to write file is null, the file could not be created on device."

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 293
    :catch_0
    move-exception v4

    .line 289
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v17

    if-nez v17, :cond_7

    .line 292
    :goto_3
    const/16 v17, 0x0

    return v17

    .line 257
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v15    # "statusCode":I
    .restart local v16    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "HTTP get file response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_3
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "<<< Receive HTTP response: \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 267
    .restart local v6    # "localFileLength":I
    .restart local v14    # "receivedBytes":I
    :sswitch_0
    if-gtz v6, :cond_6

    :goto_4
    const/16 v17, 0x0

    .line 280
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    const v17, 0x19000

    .line 296
    :try_start_2
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 297
    .local v2, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v18

    const-wide/16 v20, 0x14

    div-long v12, v18, v20

    .local v12, "progressSpan":J
    const-wide/16 v10, 0x0

    .line 299
    .local v10, "progress":J
    invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 300
    .local v5, "input":Ljava/io/InputStream;
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    .local v8, "num":I
    :cond_4
    :goto_6
    const/16 v17, -0x1

    .line 301
    move/from16 v0, v17

    if-ne v8, v0, :cond_8

    .line 338
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->flush()V

    .line 339
    if-gtz v9, :cond_f

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v17

    if-nez v17, :cond_10

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V

    const/16 v17, 0x0

    .line 346
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v17

    if-nez v17, :cond_11

    .line 352
    const/16 v17, 0x1

    return v17

    .line 272
    .end local v2    # "buffer":[B
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v8    # "num":I
    .end local v10    # "progress":J
    .end local v12    # "progressSpan":J
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 274
    :try_start_5
    new-instance v17, Ljava/io/BufferedOutputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 278
    :catch_1
    move-exception v3

    .line 276
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Could not open stream, file does not exists."

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 277
    const/16 v17, 0x0

    return v17

    .line 283
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :sswitch_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    .line 290
    .end local v6    # "localFileLength":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v14    # "receivedBytes":I
    .end local v15    # "statusCode":I
    .end local v16    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Download file exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 301
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[B
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v6    # "localFileLength":I
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "num":I
    .restart local v10    # "progress":J
    .restart local v12    # "progressSpan":J
    .restart local v14    # "receivedBytes":I
    .restart local v15    # "statusCode":I
    .restart local v16    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_8
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v17

    if-nez v17, :cond_5

    .line 302
    if-nez v8, :cond_9

    .line 314
    :goto_7
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/16 v17, -0x1

    .line 315
    move/from16 v0, v17

    if-ne v8, v0, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-eqz v17, :cond_4

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    const/4 v8, 0x0

    .line 319
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 303
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    .line 304
    int-to-long v0, v8

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 305
    cmp-long v17, v10, v12

    if-ltz v17, :cond_c

    const/16 v17, 0x1

    :goto_8
    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-nez v17, :cond_b

    .line 307
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v20

    invoke-interface/range {v17 .. v21}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferProgress(JJ)V

    const-wide/16 v10, 0x0

    .line 312
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_7

    .line 336
    .end local v2    # "buffer":[B
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v8    # "num":I
    .end local v10    # "progress":J
    .end local v12    # "progressSpan":J
    :catch_2
    move-exception v4

    .line 331
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v17

    if-nez v17, :cond_e

    .line 334
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->pausedOnNetworkFailure()V

    .line 335
    const/16 v17, 0x0

    return v17

    .line 305
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[B
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v8    # "num":I
    .restart local v10    # "progress":J
    .restart local v12    # "progressSpan":J
    :cond_c
    const/16 v17, 0x0

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    .line 316
    goto/16 :goto_6

    .line 332
    .end local v2    # "buffer":[B
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v8    # "num":I
    .end local v10    # "progress":J
    .end local v12    # "progressSpan":J
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Download file exception. Set in paused"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 340
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[B
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v8    # "num":I
    .restart local v10    # "progress":J
    .restart local v12    # "progressSpan":J
    :cond_f
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->resumeDownload()Z

    move-result v17

    return v17

    .line 343
    :cond_10
    const/16 v17, 0x0

    return v17

    .line 349
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 350
    const/16 v17, 0x0

    return v17

    .line 352
    :catch_3
    move-exception v4

    .line 356
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v17

    if-nez v17, :cond_12

    .line 359
    :goto_a
    const/16 v17, 0x0

    return v17

    .line 357
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Download file exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 265
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_1
    .end sparse-switch
.end method

.method private getThumbnail(Ljava/net/URL;)Ljava/io/ByteArrayOutputStream;
    .locals 14
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .local v8, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v0, 0x0

    .line 408
    .local v0, "bOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->openHttpConnection(Ljava/net/URL;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v8

    .line 409
    .local v8, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    .line 410
    .local v7, "statusCode":I
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "message":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_0

    .line 414
    :goto_0
    sget-boolean v9, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v9, :cond_1

    :goto_1
    const/16 v9, 0xc8

    .line 417
    if-eq v9, v7, :cond_2

    .line 446
    if-nez v8, :cond_a

    :goto_2
    const/4 v9, 0x0

    .line 447
    return-object v9

    .line 412
    :cond_0
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP get thumbnail response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v3

    .line 438
    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_1
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_b

    .line 443
    :goto_4
    if-nez v0, :cond_c

    .line 446
    :goto_5
    if-nez v8, :cond_d

    :goto_6
    const/4 v9, 0x0

    .line 447
    return-object v9

    .line 415
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    :try_start_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<<< Receive HTTP response:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 447
    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_0
    move-exception v9

    .line 443
    :goto_7
    if-nez v0, :cond_e

    .line 446
    :goto_8
    if-nez v8, :cond_f

    .line 447
    :goto_9
    throw v9

    .restart local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    const/4 v9, 0x0

    .line 418
    :try_start_3
    iput v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    const v9, 0x19000

    .line 419
    new-array v2, v9, [B

    .line 420
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "bOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 422
    .local v4, "input":Ljava/io/InputStream;
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "num":I
    :goto_a
    const/4 v9, -0x1

    .line 423
    if-ne v6, v9, :cond_4

    .line 429
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 443
    if-nez v1, :cond_8

    .line 446
    :goto_b
    if-nez v8, :cond_9

    .line 447
    :goto_c
    return-object v1

    .line 423
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 424
    iget v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v9

    iget v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->mCalclength:I

    int-to-long v10, v10

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v12

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferProgress(JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v9, 0x0

    .line 426
    :try_start_5
    invoke-virtual {v1, v2, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 427
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v6

    goto :goto_a

    .line 443
    :cond_5
    if-nez v1, :cond_6

    .line 446
    :goto_d
    if-nez v8, :cond_7

    :goto_e
    const/4 v9, 0x0

    .line 447
    return-object v9

    .line 444
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_d

    .line 447
    :cond_7
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_e

    .line 444
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_b

    .line 447
    :cond_9
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_c

    .end local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "num":I
    .restart local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_a
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 439
    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_6
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Download thumbnail exception"

    invoke-virtual {v9, v10, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 444
    :cond_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_5

    .line 447
    :cond_d
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 444
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_8

    .line 447
    :cond_f
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_9

    .restart local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v0, "bOutputStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "num":I
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "num":I
    .restart local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3

    .end local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "num":I
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bOutputStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public createDirectoryIfDoesNotExist(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 515
    if-eqz p1, :cond_0

    const-string/jumbo v2, "image"

    .line 517
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "video"

    .line 519
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 522
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "path":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 528
    :goto_1
    return-void

    .line 516
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPhotoRootDirectory()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getVideoRootDirectory()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 526
    .restart local v0    # "directory":Ljava/io/File;
    :cond_3
    invoke-static {v1}, Lcom/sonymobile/rcs/platform/file/FileFactory;->createDirectory(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public createFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "mime":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sonymobile/rcs/core/content/ContentManager;->generateUrlForReceivedContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->contentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    return-object v1
.end method

.method public downloadFile()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    .line 202
    :goto_1
    sget-boolean v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v2, :cond_2

    .line 207
    :goto_2
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFile(Ljava/net/URL;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v7

    .line 189
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_9

    .line 231
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v6

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Could not open stream, file does not exists."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v6

    .line 203
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> Send HTTP request:\nGET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getHttpServerAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 231
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    throw v2

    .line 208
    :cond_3
    :try_start_6
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    .line 212
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 231
    :goto_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v6

    .line 208
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v2

    if-nez v2, :cond_4

    .line 209
    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    .line 210
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->downloadFile()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .line 231
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v2

    .line 213
    :cond_6
    :try_start_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v2

    if-nez v2, :cond_8

    .line 218
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Failed to download file"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 214
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Download file cancelled"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 216
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Download file paused"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 227
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Donwload file exception"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3
.end method

.method public downloadThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)[B
    .locals 6
    .param p1, "thumbnailInfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    .prologue
    const/4 v5, 0x0

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    :goto_0
    sget-boolean v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v2, :cond_2

    .line 382
    :goto_1
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getThumbnail(Ljava/net/URL;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 383
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_3

    .line 389
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 373
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download Thumbnail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 394
    :goto_3
    return-object v5

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> Send HTTP request:\nGET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 384
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Failed to download Thumbnail"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 392
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Download thumbnail exception"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->contentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public resumeDownload()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->resetParamForResume()V

    .line 455
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    if-eqz v7, :cond_0

    .line 465
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 471
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 472
    .local v2, "downloadedLength":J
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v0

    .line 473
    .local v0, "completeSize":J
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "Range"

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-boolean v7, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v7, :cond_2

    .line 480
    :goto_2
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFile(Ljava/net/URL;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 504
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v13

    .line 457
    .end local v0    # "completeSize":J
    .end local v2    # "downloadedLength":J
    .end local v6    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v4

    .line 459
    .local v4, "e":Ljava/io/FileNotFoundException;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Could not open stream, file does not exists."

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 460
    return v12

    .line 466
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Resuming Download file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from byte "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 504
    :catch_1
    move-exception v5

    .line 499
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-nez v7, :cond_9

    .line 504
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v12

    .line 476
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "completeSize":J
    .restart local v2    # "downloadedLength":J
    .restart local v6    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ">>> Send HTTP request:\n GET "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 504
    .end local v0    # "completeSize":J
    .end local v2    # "downloadedLength":J
    .end local v6    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    throw v7

    .line 481
    .restart local v0    # "completeSize":J
    .restart local v2    # "downloadedLength":J
    .restart local v6    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_5
    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_5

    .line 485
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    .line 504
    :goto_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v12

    .line 481
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v7

    if-nez v7, :cond_4

    .line 482
    iget v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->retryCount:I

    .line 483
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->downloadFile()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v7

    .line 504
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->closeStreamForFile()V

    return v7

    .line 486
    :cond_6
    :try_start_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_7

    .line 488
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v7

    if-nez v7, :cond_8

    .line 491
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Failed to download file"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 487
    :cond_7
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Download file cancelled"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 489
    :cond_8
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Download file paused"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 500
    .end local v0    # "completeSize":J
    .end local v2    # "downloadedLength":J
    .end local v6    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_8
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Download file exception"

    invoke-virtual {v7, v8, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3
.end method
