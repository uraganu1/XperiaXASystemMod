.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;
.source "HttpUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;
    }
.end annotation


# instance fields
.field private auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

.field private content:Lcom/sonymobile/rcs/core/content/MmContent;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private retryCount:I

.field private thumbnail:[B

.field private thumbnailFlag:Z

.field private tid:Ljava/lang/String;

.field private tidFlag:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/content/MmContent;[BLcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V
    .locals 1
    .param p1, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p2, "thumbnail"    # [B
    .param p3, "listener"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    .prologue
    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V

    .line 116
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnailFlag:Z

    .line 126
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tidFlag:Z

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 153
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    .line 154
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnail:[B

    .line 155
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    .line 156
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 496
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 497
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 501
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 508
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 513
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 502
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 512
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 511
    :catch_1
    move-exception v0

    .line 509
    :goto_2
    goto :goto_1

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 512
    .end local v1    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 508
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 511
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method private generateTidMultipart()Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, "--boundary1\r\n"

    .line 435
    .local v0, "tidPartHeader":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content-Disposition: form-data; name=\"tid\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content-Type: text/plain\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRetryTimeout(Ljava/net/URLConnection;)J
    .locals 6
    .param p1, "connection"    # Ljava/net/URLConnection;

    .prologue
    :try_start_0
    const-string/jumbo v1, "Retry-After"

    .line 249
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    .line 252
    return-wide v2
.end method

.method private static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/sonymobile/rcs/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const v4, 0x19000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 909
    .local v1, "r":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 912
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    if-nez p0, :cond_1

    .line 915
    :goto_1
    return-object v3

    .line 910
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "r":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    .line 914
    if-nez p0, :cond_2

    .line 915
    :goto_2
    throw v3

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2
.end method

.method private sendGetDownloadInfo()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "&get_download_info"

    .line 928
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetInfo(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private sendGetInfo(Ljava/lang/String;Z)[B
    .locals 25
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "authRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 809
    new-instance v20, Ljava/net/URL;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getHttpServerAddr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 810
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    .line 811
    .local v14, "protocol":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 812
    .local v9, "host":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 813
    .local v12, "path":Ljava/lang/String;
    new-instance v20, Ljava/net/URL;

    .end local v20    # "url":Ljava/net/URL;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "?tid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 815
    .restart local v20    # "url":Ljava/net/URL;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v13, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 822
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->openHttpConnection(Ljava/net/URL;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v6

    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const/16 v21, 0x4e20

    .line 823
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 824
    sget-boolean v21, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v21, :cond_2

    .line 834
    :goto_1
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v18

    .line 835
    .local v18, "statusCode":I
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    .line 836
    .local v11, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_4

    .line 840
    :goto_2
    sget-boolean v21, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v21, :cond_5

    .line 850
    :goto_3
    sparse-switch v18, :sswitch_data_0

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    move/from16 v21, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 899
    if-nez v6, :cond_14

    :goto_4
    const/16 v21, 0x0

    .line 900
    return-object v21

    .line 816
    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "message":Ljava/lang/String;
    .end local v18    # "statusCode":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "GET"

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, ""

    invoke-virtual/range {v21 .. v24}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->generateAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "authValue":Ljava/lang/String;
    const-string/jumbo v21, "Authorization"

    .line 818
    move-object/from16 v0, v21

    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 825
    .end local v5    # "authValue":Ljava/lang/String;
    .restart local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, ">>> Send HTTP request:\nGET "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 827
    .local v19, "trace":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 828
    .local v8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 832
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 900
    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v19    # "trace":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v21

    .line 899
    if-nez v6, :cond_15

    .line 900
    :goto_6
    throw v21

    .line 828
    .restart local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v19    # "trace":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v21, "\n"

    .line 829
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 837
    .end local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v19    # "trace":Ljava/lang/StringBuilder;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v18    # "statusCode":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Get info ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ") Response: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 841
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "<<< Receive HTTP response: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 843
    .restart local v19    # "trace":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 844
    .restart local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_6

    .line 848
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 844
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .restart local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v21, "\n"

    .line 845
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 852
    .end local v7    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v19    # "trace":Ljava/lang/StringBuilder;
    :sswitch_0
    if-nez p2, :cond_7

    const-string/jumbo v21, "www-authenticate"

    .line 857
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "authHeader":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 865
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->readWwwAuthenticateHeader(Ljava/lang/String;)V

    .line 866
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetInfo(Ljava/lang/String;Z)[B

    move-result-object v21

    .line 899
    if-nez v6, :cond_a

    .line 900
    :goto_9
    return-object v21

    .line 853
    .end local v4    # "authHeader":Ljava/lang/String;
    :cond_7
    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unexpected response from server, got "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " for the"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " second time. Authentication rejected."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 859
    .restart local v4    # "authHeader":Ljava/lang/String;
    :cond_8
    new-instance v21, Ljava/io/IOException;

    const-string/jumbo v22, "headers malformed in 401 response"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 862
    :cond_9
    new-instance v21, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getHttpServerLogin()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getHttpServerPwd()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 900
    :cond_a
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_9

    .line 869
    .end local v4    # "authHeader":Ljava/lang/String;
    :sswitch_1
    :try_start_3
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 870
    .local v15, "resp":Ljava/lang/String;
    sget-object v21, Lcom/sonymobile/rcs/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v21

    .line 899
    if-nez v6, :cond_b

    .line 900
    :goto_a
    return-object v21

    :cond_b
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_a

    .line 873
    .end local v15    # "resp":Ljava/lang/String;
    :sswitch_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getRetryTimeout(Ljava/net/URLConnection;)J

    move-result-wide v16

    .line 874
    .local v16, "retryAfter":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v21

    if-nez v21, :cond_d

    :goto_b
    const-wide/16 v22, 0x0

    .line 877
    cmp-long v21, v16, v22

    if-gtz v21, :cond_e

    const/16 v21, 0x1

    :goto_c
    if-nez v21, :cond_c

    .line 879
    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 885
    :cond_c
    :goto_d
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    .line 899
    if-nez v6, :cond_11

    :goto_e
    const/16 v21, 0x0

    .line 900
    return-object v21

    .line 875
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Resume transfer :: Retry-After value "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 877
    :cond_e
    const/16 v21, 0x0

    goto :goto_c

    .line 882
    :catch_0
    move-exception v21

    goto :goto_d

    .line 886
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    .line 887
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetInfo(Ljava/lang/String;Z)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v21

    .line 899
    if-nez v6, :cond_10

    .line 900
    :goto_f
    return-object v21

    :cond_10
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_f

    :cond_11
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_e

    .line 893
    .end local v16    # "retryAfter":J
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    .line 894
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetInfo(Ljava/lang/String;Z)[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v21

    .line 899
    if-nez v6, :cond_13

    .line 900
    :goto_10
    return-object v21

    :cond_13
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_10

    :cond_14
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_4

    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "message":Ljava/lang/String;
    .end local v18    # "statusCode":I
    :cond_15
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 850
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x191 -> :sswitch_0
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method

.method private sendMultipartPost(Ljava/net/URL;)[B
    .locals 28
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .local v13, "outputStream":Ljava/io/DataOutputStream;
    const/4 v6, 0x0

    .line 265
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v25, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;)V

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 266
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .local v8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v25, "Connection"

    const-string/jumbo v26, "Keep-Alive"

    .line 267
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v25, "Content-Type"

    const-string/jumbo v26, "multipart/form-data; boundary=boundary1"

    .line 268
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->openHttpConnection(Ljava/net/URL;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 272
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->getFileTransferSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_0
    :goto_0
    const/16 v25, 0x1

    :try_start_2
    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/16 v25, 0x4e20

    .line 280
    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const v25, 0x19000

    .line 281
    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    const-string/jumbo v25, "POST"

    .line 282
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v5, ""

    .line 288
    .local v5, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tidFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 293
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v25, v0

    if-nez v25, :cond_4

    .line 298
    :goto_2
    sget-boolean v25, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v25, :cond_5

    .line 311
    :goto_3
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .end local v13    # "outputStream":Ljava/io/DataOutputStream;
    .local v14, "outputStream":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v14, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnailFlag:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 320
    :cond_1
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v25

    check-cast v25, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadTransferEventListener;

    invoke-interface/range {v25 .. v25}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadTransferEventListener;->uploadStarted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 324
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v25

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v14, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->writeFileMultipart(Ljava/io/DataOutputStream;Landroid/net/Uri;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v25

    if-eqz v25, :cond_8

    .line 397
    :cond_2
    if-nez v14, :cond_a

    .line 400
    :goto_5
    if-nez v6, :cond_b

    :goto_6
    const/16 v25, 0x0

    .line 401
    return-object v25

    .line 278
    .end local v5    # "body":Ljava/lang/String;
    .end local v14    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v13    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    .line 275
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Failed to initiate SSL for connection:"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 401
    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    .line 397
    .end local v13    # "outputStream":Ljava/io/DataOutputStream;
    :goto_7
    if-nez v13, :cond_1c

    .line 400
    :goto_8
    if-nez v6, :cond_1d

    .line 401
    :goto_9
    throw v25

    .line 289
    .restart local v5    # "body":Ljava/lang/String;
    .restart local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "outputStream":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->generateTidMultipart()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 294
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "POST"

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->generateAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "authValue":Ljava/lang/String;
    const-string/jumbo v25, "Authorization"

    .line 296
    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 299
    .end local v4    # "authValue":Ljava/lang/String;
    :cond_5
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, ">>> Send HTTP request:\nPOST "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 301
    .local v24, "trace":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v15

    .line 302
    .local v15, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    const-string/jumbo v25, "\n"

    .line 306
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 302
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .local v16, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v25, "\n"

    .line 303
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 315
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "outputStream":Ljava/io/DataOutputStream;
    .end local v15    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v24    # "trace":Ljava/lang/StringBuilder;
    .restart local v14    # "outputStream":Ljava/io/DataOutputStream;
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnail:[B

    move-object/from16 v25, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v25, :cond_1

    .line 316
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->writeThumbnailMultipart(Ljava/io/DataOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 401
    :catchall_1
    move-exception v25

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/DataOutputStream;
    .local v13, "outputStream":Ljava/io/DataOutputStream;
    goto/16 :goto_7

    .line 325
    .end local v13    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v14    # "outputStream":Ljava/io/DataOutputStream;
    :cond_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isPaused()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v25

    if-nez v25, :cond_2

    :try_start_b
    const-string/jumbo v25, "--boundary1--"

    .line 332
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v17

    .line 336
    .local v17, "responseCode":I
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    .line 337
    .local v12, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v25

    if-nez v25, :cond_c

    :goto_b
    const/16 v18, 0x0

    .line 341
    .local v18, "result":[B
    const/16 v22, 0x0

    .line 342
    .local v22, "success":Z
    const/16 v19, 0x0

    .line 343
    .local v19, "retry":Z
    sget-boolean v25, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v25, :cond_e

    .line 347
    :goto_c
    sparse-switch v17, :sswitch_data_0

    .line 374
    .end local v18    # "result":[B
    :cond_9
    :goto_d
    if-nez v22, :cond_10

    .line 376
    if-nez v19, :cond_13

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v25

    if-nez v25, :cond_16

    .line 397
    :goto_e
    if-nez v14, :cond_17

    .line 400
    :goto_f
    if-nez v6, :cond_18

    :goto_10
    const/16 v25, 0x0

    .line 401
    return-object v25

    .line 398
    .end local v12    # "message":Ljava/lang/String;
    .end local v17    # "responseCode":I
    .end local v19    # "retry":Z
    .end local v22    # "success":Z
    :cond_a
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_5

    .line 401
    :cond_b
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 338
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v17    # "responseCode":I
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Second POST response "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_b

    .line 401
    .end local v12    # "message":Ljava/lang/String;
    .end local v17    # "responseCode":I
    :catch_1
    move-exception v7

    .line 391
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isPaused()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v25

    if-eqz v25, :cond_19

    .line 397
    :cond_d
    :goto_11
    if-nez v14, :cond_1a

    .line 400
    :goto_12
    if-nez v6, :cond_1b

    :goto_13
    const/16 v25, 0x0

    .line 401
    return-object v25

    .line 344
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v17    # "responseCode":I
    .restart local v18    # "result":[B
    .restart local v19    # "retry":Z
    .restart local v22    # "success":Z
    :cond_e
    :try_start_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "<<< Receive HTTP response:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 345
    .local v23, "trace":Ljava/lang/String;
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 401
    .end local v12    # "message":Ljava/lang/String;
    .end local v17    # "responseCode":I
    .end local v18    # "result":[B
    .end local v19    # "retry":Z
    .end local v22    # "success":Z
    .end local v23    # "trace":Ljava/lang/String;
    :catchall_2
    move-exception v25

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v13    # "outputStream":Ljava/io/DataOutputStream;
    goto/16 :goto_7

    .line 349
    .end local v13    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v14    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v17    # "responseCode":I
    .restart local v18    # "result":[B
    .restart local v19    # "retry":Z
    .restart local v22    # "success":Z
    :sswitch_0
    const/16 v22, 0x1

    .line 350
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 351
    .local v11, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->convertStreamToString(Ljava/io/InputStream;)[B

    move-result-object v18

    .line 352
    .local v18, "result":[B
    sget-boolean v25, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-eqz v25, :cond_9

    .line 353
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 357
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .local v18, "result":[B
    :sswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getRetryTimeout(Ljava/net/URLConnection;)J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-wide v20

    .local v20, "retryAfter":J
    const-wide/16 v26, 0x0

    .line 358
    cmp-long v25, v20, v26

    if-gtz v25, :cond_f

    const/16 v25, 0x1

    :goto_14
    if-nez v25, :cond_9

    .line 360
    :try_start_f
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 364
    const/16 v19, 0x1

    goto/16 :goto_d

    .line 358
    :cond_f
    const/16 v25, 0x0

    goto :goto_14

    .line 368
    :catch_2
    move-exception v10

    .line 366
    .local v10, "ignore":Ljava/lang/InterruptedException;
    goto/16 :goto_d

    .line 397
    .end local v10    # "ignore":Ljava/lang/InterruptedException;
    .end local v18    # "result":[B
    .end local v20    # "retryAfter":J
    :cond_10
    if-nez v14, :cond_11

    .line 400
    :goto_15
    if-nez v6, :cond_12

    .line 401
    :goto_16
    return-object v18

    .line 398
    :cond_11
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    goto :goto_15

    .line 401
    :cond_12
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_16

    .line 377
    :cond_13
    :try_start_10
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendMultipartPost(Ljava/net/URL;)[B
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v25

    .line 397
    if-nez v14, :cond_14

    .line 400
    :goto_17
    if-nez v6, :cond_15

    .line 401
    :goto_18
    return-object v25

    .line 398
    :cond_14
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    goto :goto_17

    .line 401
    :cond_15
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_18

    .line 380
    :cond_16
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "File Upload aborted, Received "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " from server"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_e

    .line 398
    :cond_17
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_f

    .line 401
    :cond_18
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_10

    .line 391
    .end local v12    # "message":Ljava/lang/String;
    .end local v17    # "responseCode":I
    .end local v19    # "retry":Z
    .end local v22    # "success":Z
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_19
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v25

    if-nez v25, :cond_d

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->pausedOnNetworkFailure()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_11

    .line 398
    :cond_1a
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_12

    .line 401
    :cond_1b
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_13

    .line 398
    .end local v5    # "body":Ljava/lang/String;
    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "outputStream":Ljava/io/DataOutputStream;
    :cond_1c
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_8

    .line 401
    :cond_1d
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_9

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendPutForResumingUpload(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;)[B
    .locals 26
    .param p1, "resumeInfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 607
    .local v12, "outputStream":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 608
    .local v9, "fileUri":Landroid/net/Uri;
    new-instance v18, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getUrl()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v18, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 612
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v19, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager$NullHostNameVerifier;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;)V

    invoke-static/range {v19 .. v19}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 613
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 616
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransSSLFactory;->getFileTransferSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 625
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 v19, 0x4e20

    .line 626
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string/jumbo v19, "PUT"

    .line 629
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v19, "Connection"

    const-string/jumbo v20, "Keep-Alive"

    .line 630
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "User-Agent"

    .line 631
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->userAgentString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "Content-Type"

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "Content-Length"

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getEnd()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "Content-Range"

    .line 635
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "bytes "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getEnd()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v19, 0x7d000

    .line 637
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    const-string/jumbo v5, ""

    .line 643
    .local v5, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 652
    :cond_1
    :goto_1
    sget-boolean v19, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v19, :cond_4

    .line 666
    :goto_2
    new-instance v12, Ljava/io/DataOutputStream;

    .end local v12    # "outputStream":Ljava/io/DataOutputStream;
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 667
    .local v12, "outputStream":Ljava/io/DataOutputStream;
    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 671
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getStart()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getEnd()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v12, v9, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->writeRequestedFileData(Ljava/io/DataOutputStream;Landroid/net/Uri;II)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isPaused()Z

    move-result v19

    if-nez v19, :cond_c

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_e

    .line 738
    :cond_2
    :goto_3
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 739
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 740
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v19, 0x0

    .line 741
    return-object v19

    .line 622
    .end local v5    # "body":Ljava/lang/String;
    .local v12, "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    .line 619
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "Failed to initiate SSL for connection:"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 644
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "body":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->generateAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "authValue":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v19, "Authorization"

    .line 647
    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4    # "authValue":Ljava/lang/String;
    :cond_4
    const-string/jumbo v17, ">>> Send HTTP request:"

    .line 654
    .local v17, "trace":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 655
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 656
    .local v15, "strs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 657
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 661
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 662
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 658
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 659
    .local v8, "element":Ljava/lang/Object;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    check-cast v8, Ljava/lang/String;

    .end local v8    # "element":Ljava/lang/Object;
    invoke-virtual {v6, v8}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 676
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "strs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "trace":Ljava/lang/String;
    .local v12, "outputStream":Ljava/io/DataOutputStream;
    :cond_6
    :try_start_2
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    .line 678
    .local v13, "responseCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_8

    :goto_5
    const/4 v14, 0x0

    .line 682
    .local v14, "result":[B
    const/16 v16, 0x0

    .line 684
    .local v16, "success":Z
    sget-boolean v19, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v19, :cond_9

    .line 690
    :goto_6
    packed-switch v13, :pswitch_data_0

    .line 706
    .end local v14    # "result":[B
    :cond_7
    :goto_7
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 707
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 708
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 710
    if-nez v16, :cond_a

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_b

    :goto_8
    const/16 v19, 0x0

    .line 718
    return-object v19

    .line 679
    .end local v16    # "success":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PUT response "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 741
    .end local v13    # "responseCode":I
    :catch_1
    move-exception v7

    .line 744
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_f

    .line 748
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->pausedOnNetworkFailure()V

    const/16 v19, 0x0

    .line 749
    return-object v19

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v13    # "responseCode":I
    .restart local v14    # "result":[B
    .restart local v16    # "success":Z
    :cond_9
    :try_start_3
    const-string/jumbo v17, "<<< Receive HTTP response:"

    .line 686
    .restart local v17    # "trace":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 688
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 693
    .end local v17    # "trace":Ljava/lang/String;
    :pswitch_0
    const/16 v16, 0x1

    .line 694
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 695
    .local v10, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->convertStreamToString(Ljava/io/InputStream;)[B

    move-result-object v14

    .line 696
    .local v14, "result":[B
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 697
    sget-boolean v19, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-eqz v19, :cond_7

    .line 698
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 711
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "result":[B
    :cond_a
    return-object v14

    .line 716
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "File Upload aborted due to  PUT "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " from server"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 723
    .end local v13    # "responseCode":I
    .end local v16    # "success":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_d

    .line 727
    :goto_a
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    .line 728
    .restart local v13    # "responseCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PUT Response "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 724
    .end local v13    # "responseCode":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "File transfer paused by user"

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 734
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "File transfer cancelled by user"

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 745
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "File Upload aborted due to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " now in state pause, waiting for resume..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 690
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method private writeFileMultipart(Ljava/io/DataOutputStream;Landroid/net/Uri;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/rcs/platform/file/FileFactory;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 451
    .local v0, "inputStream":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->writeFileMultipart(Ljava/io/DataOutputStream;Ljava/io/InputStream;J)V

    .line 452
    return-void
.end method

.method private writeFileMultipart(Ljava/io/DataOutputStream;Ljava/io/InputStream;J)V
    .locals 11
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string/jumbo v4, "--boundary1\r\n"

    .line 466
    .local v4, "filePartHeader":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Content-Disposition: form-data; name=\"File\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Content-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v2

    .local v2, "bytesAvailable":I
    const v6, 0x19000

    .line 474
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 475
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .local v0, "buffer":[B
    const/4 v3, 0x0

    .local v3, "bytesRead":I
    const/4 v5, 0x0

    .line 478
    .local v5, "progress":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 486
    :goto_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 487
    return-void

    .line 478
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 479
    invoke-virtual {p1, v0, v10, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 480
    add-int/2addr v5, v3

    .line 481
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v6

    int-to-long v8, v5

    invoke-interface {v6, v8, v9, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferProgress(JJ)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "\r\n"

    .line 484
    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeRequestedFileData(Ljava/io/DataOutputStream;Landroid/net/Uri;II)V
    .locals 12
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "startingByte"    # I
    .param p4, "endingByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 768
    .local v4, "fileInputStream":Ljava/io/InputStream;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 770
    .local v5, "fileSize":Ljava/lang/Long;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 774
    :goto_0
    add-int/lit8 v7, p4, 0x1

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    long-to-int v3, v8

    .line 775
    .local v3, "bytesRead":I
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v2

    .local v2, "bytesAvailable":I
    const v7, 0x19000

    .line 776
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 778
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 779
    .local v0, "buffer":[B
    move v6, v3

    .local v6, "progress":I
    const/4 v7, 0x0

    .line 780
    invoke-virtual {v4, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 782
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_2

    .line 786
    :goto_1
    if-gtz v3, :cond_3

    .line 796
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 797
    return-void

    .line 771
    .end local v0    # "buffer":[B
    .end local v1    # "bufferSize":I
    .end local v2    # "bytesAvailable":I
    .end local v3    # "bytesRead":I
    .end local v6    # "progress":I
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Writing data from URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to a stream."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferSize":I
    .restart local v2    # "bytesAvailable":I
    .restart local v3    # "bytesRead":I
    .restart local v6    # "progress":I
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Send "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes starting from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 786
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 787
    add-int/2addr v6, v3

    const/4 v7, 0x0

    .line 788
    invoke-virtual {p1, v0, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 789
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 790
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferProgress(JJ)V

    const v7, 0x19000

    .line 791
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 792
    new-array v0, v1, [B

    const/4 v7, 0x0

    .line 793
    invoke-virtual {v4, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_1
.end method

.method private writeThumbnailMultipart(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnail:[B

    array-length v1, v1

    if-gtz v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v1, "--boundary1\r\n"

    .line 416
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Content-Disposition: form-data; name=\"thumbnail\"; filename=\"thumb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Type: image/jpeg\r\n"

    .line 420
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnail:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v1, "\r\n\r\n"

    .line 422
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->thumbnail:[B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    const-string/jumbo v1, "\r\n"

    .line 424
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public resumeUpload()[B
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 539
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    const/4 v2, 0x0

    .local v2, "resp":[B
    :try_start_0
    const-string/jumbo v5, "&get_upload_info"

    .line 545
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetInfo(Ljava/lang/String;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 553
    .end local v2    # "resp":[B
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->resetParamForResume()V

    .line 555
    if-eqz v2, :cond_3

    .line 562
    sget-boolean v5, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v5, :cond_5

    .line 567
    :goto_2
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpResumeInfo([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    move-result-object v1

    .line 569
    .local v1, "ftResumeInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    if-nez v1, :cond_6

    .line 571
    :cond_1
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tidFlag:Z

    .line 572
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->uploadFile()[B

    move-result-object v4

    return-object v4

    .line 540
    .end local v1    # "ftResumeInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User resumes transfer (TID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    .restart local v2    # "resp":[B
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 548
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not get upload info due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "resp":[B
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    .line 559
    :goto_3
    iput-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tidFlag:Z

    .line 560
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->uploadFile()[B

    move-result-object v4

    return-object v4

    .line 557
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Unexpected Server response, will restart upload from begining"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v5, "Get Upload Info response:\n"

    .line 563
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "trace":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 569
    .end local v3    # "trace":Ljava/lang/String;
    .restart local v1    # "ftResumeInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    :cond_6
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getEnd()I

    move-result v5

    if-lez v5, :cond_1

    .line 576
    :try_start_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getEnd()I

    move-result v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->getStart()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v6, v5

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    const/4 v4, 0x1

    :cond_7
    if-nez v4, :cond_9

    .line 578
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_8

    .line 581
    :goto_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetDownloadInfo()[B

    move-result-object v4

    return-object v4

    .line 579
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Nothing to resume: uploaded complete"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 588
    :catch_1
    move-exception v0

    .line 590
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 593
    :goto_5
    return-object v12

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendPutForResumingUpload(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;)[B

    move-result-object v4

    if-nez v4, :cond_a

    .line 588
    return-object v12

    .line 586
    :cond_a
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendGetDownloadInfo()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    return-object v4

    .line 591
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Failed to resume upload, "

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->tid:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public uploadFile()[B
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    .line 166
    .local v7, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_1

    .line 170
    :goto_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getHttpServerAddr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 171
    .local v6, "url":Ljava/net/URL;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v6, v10}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->openHttpConnection(Ljava/net/URL;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v7

    .line 172
    .local v7, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 173
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string/jumbo v10, "POST"

    .line 174
    invoke-virtual {v7, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v10, 0x4e20

    .line 175
    invoke-virtual {v7, v10}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const v10, 0x19000

    .line 176
    invoke-virtual {v7, v10}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 177
    sget-boolean v10, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->HTTP_TRACE_ENABLED:Z

    if-nez v10, :cond_2

    .line 180
    :goto_1
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 181
    .local v3, "statusCode":I
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_3

    .line 186
    :goto_2
    sparse-switch v3, :sswitch_data_0

    .line 215
    :cond_0
    :goto_3
    iget v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_6

    .line 241
    if-nez v7, :cond_8

    .line 242
    :goto_4
    return-object v13

    .line 167
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "statusCode":I
    .end local v6    # "url":Ljava/net/URL;
    .local v7, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Upload file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 242
    .end local v7    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_d

    .line 241
    :goto_5
    if-nez v7, :cond_e

    .line 242
    :goto_6
    return-object v13

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "url":Ljava/net/URL;
    .local v7, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    :try_start_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ">>> Send HTTP request:\nPOST "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 242
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_0
    move-exception v8

    .line 241
    if-nez v7, :cond_f

    .line 242
    :goto_7
    throw v8

    .line 184
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "statusCode":I
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "First POST response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_0
    const-string/jumbo v8, "www-authenticate"

    .line 189
    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "authHeader":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 193
    new-instance v8, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getHttpServerLogin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getHttpServerPwd()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    .line 194
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->auth:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->readWwwAuthenticateHeader(Ljava/lang/String;)V

    .line 223
    .end local v0    # "authHeader":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 231
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferStarted()V

    .line 234
    invoke-direct {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->sendMultipartPost(Ljava/net/URL;)[B

    move-result-object v8

    .line 241
    if-nez v7, :cond_c

    .line 242
    :goto_8
    return-object v8

    .line 191
    .restart local v0    # "authHeader":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "headers malformed in 401 response"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 203
    .end local v0    # "authHeader":Ljava/lang/String;
    :sswitch_2
    invoke-direct {p0, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getRetryTimeout(Ljava/net/URLConnection;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    .local v4, "retryAfter":J
    const-wide/16 v10, 0x0

    .line 204
    cmp-long v10, v4, v10

    if-gtz v10, :cond_5

    :goto_9
    if-nez v8, :cond_0

    .line 206
    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 209
    :catch_1
    move-exception v8

    goto/16 :goto_3

    :cond_5
    move v8, v9

    .line 204
    goto :goto_9

    .line 216
    .end local v4    # "retryAfter":J
    :cond_6
    :try_start_5
    iget v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->retryCount:I

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->uploadFile()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 241
    if-nez v7, :cond_7

    .line 242
    :goto_a
    return-object v8

    :cond_7
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_a

    :cond_8
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_4

    .line 224
    :cond_9
    :try_start_6
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_a

    .line 241
    :goto_b
    if-nez v7, :cond_b

    .line 242
    :goto_c
    return-object v13

    .line 225
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "File transfer cancelled by user"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    .line 242
    :cond_b
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_c

    :cond_c
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_8

    .line 237
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "statusCode":I
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :try_start_7
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Upload file has failed"

    invoke-virtual {v8, v9, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 242
    :cond_e
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_6

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_7

    .line 186
    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_1
        0x191 -> :sswitch_0
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method
