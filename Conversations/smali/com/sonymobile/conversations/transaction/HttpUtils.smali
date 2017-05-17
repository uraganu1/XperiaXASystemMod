.class public Lcom/sonymobile/conversations/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;,
        Lcom/sonymobile/conversations/transaction/HttpUtils$HttpErrorException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/sonymobile/conversations/transaction/HttpUtils;->DEBUG:Z

    .line 61
    invoke-static {}, Lcom/sonymobile/conversations/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/conversations/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;F)V
    .locals 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "quality"    # F

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    const-string/jumbo v3, ";q="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "q":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "q":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 265
    .local v1, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;F)V

    .line 268
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 270
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x3f333333    # 0.7f

    invoke-static {v0, v2, v3}, Lcom/sonymobile/conversations/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;F)V

    .line 274
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 256
    throw v0
.end method

.method public static httpConnection(JLjava/lang/String;[BLjava/lang/String;ZLjava/lang/String;ILandroid/net/Network;I)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .locals 20
    .param p0, "token"    # J
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pdu"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isProxySet"    # Z
    .param p6, "proxyHost"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "proxyPort"    # I
    .param p8, "network"    # Landroid/net/Network;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "subId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    sget-boolean v17, Lcom/sonymobile/conversations/transaction/HttpUtils;->DEBUG:Z

    if-eqz v17, :cond_0

    .line 122
    const-string/jumbo v17, "httpConnection: params list"

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 123
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "token = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "url= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 125
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "method= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "isProxySet= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 127
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "proxyHost = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 128
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "proxyPort = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 129
    if-nez p3, :cond_0

    .line 130
    const-string/jumbo v17, "pdu = null"

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 134
    :cond_0
    const/4 v6, 0x0

    .line 137
    .local v6, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    sget-object v13, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 139
    .local v13, "proxy":Ljava/net/Proxy;
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    if-ltz p7, :cond_1

    const/high16 v17, 0x10000

    move/from16 v0, p7

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 140
    new-instance v13, Ljava/net/Proxy;

    .end local v13    # "proxy":Ljava/net/Proxy;
    sget-object v17, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 141
    new-instance v18, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p8

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 140
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 144
    .restart local v13    # "proxy":Ljava/net/Proxy;
    :cond_1
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    .local v9, "hostUrl":Ljava/net/URL;
    move-object/from16 v0, p8

    invoke-virtual {v0, v9, v13}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 147
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 148
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 151
    const-string/jumbo v17, "Accept"

    const-string/jumbo v18, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v17, "Accept-Language"

    sget-object v18, Lcom/sonymobile/conversations/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v17, "User-Agent"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsUserAgentString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static/range {p9 .. p9}, Lcom/android/mms/MmsConfig;->get(I)Lcom/android/mms/MmsConfig;

    move-result-object v11

    .line 162
    .local v11, "mmsConfig":Lcom/android/mms/MmsConfig;
    if-eqz v11, :cond_5

    .line 163
    invoke-virtual {v11}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, "uaProfUrl":Ljava/lang/String;
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 170
    const-string/jumbo v17, "x-wap-profile"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    const-string/jumbo v17, "POST"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 175
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 176
    :cond_3
    new-instance v17, Lcom/sonymobile/conversations/transaction/HttpUtils$HttpErrorException;

    const-string/jumbo v18, "Sending empty pdu"

    invoke-direct/range {v17 .. v18}, Lcom/sonymobile/conversations/transaction/HttpUtils$HttpErrorException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "hostUrl":Ljava/net/URL;
    .end local v11    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v13    # "proxy":Ljava/net/Proxy;
    .end local v16    # "uaProfUrl":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 224
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/sonymobile/conversations/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    if-eqz v6, :cond_4

    .line 228
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 231
    :cond_4
    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v18, "Unknown error"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 165
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v9    # "hostUrl":Ljava/net/URL;
    .restart local v11    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .restart local v13    # "proxy":Ljava/net/Proxy;
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->geDefaultUaProfUrl()Ljava/lang/String;

    move-result-object v16

    .line 166
    .restart local v16    # "uaProfUrl":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No valid MmsConfig, get the default uaProfUrl: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 226
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "hostUrl":Ljava/net/URL;
    .end local v11    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .end local v13    # "proxy":Ljava/net/Proxy;
    .end local v16    # "uaProfUrl":Ljava/lang/String;
    :catchall_0
    move-exception v17

    .line 227
    if-eqz v6, :cond_6

    .line 228
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 226
    :cond_6
    throw v17

    .line 173
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v9    # "hostUrl":Ljava/net/URL;
    .restart local v11    # "mmsConfig":Lcom/android/mms/MmsConfig;
    .restart local v13    # "proxy":Ljava/net/Proxy;
    .restart local v16    # "uaProfUrl":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v17, "GET"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 193
    const-string/jumbo v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 202
    :goto_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 203
    .local v14, "responseCode":I
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "responseMessage":Ljava/lang/String;
    sget-boolean v17, Lcom/sonymobile/conversations/transaction/HttpUtils;->DEBUG:Z

    if-eqz v17, :cond_8

    .line 205
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "responseCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " responseMessage: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/transaction/HttpUtils;->logHttpHeaders(Ljava/util/Map;)V

    .line 208
    :cond_8
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v14, v0, :cond_c

    .line 209
    new-instance v17, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v14, v1, v2}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;-><init>(I[BLcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-eqz v6, :cond_9

    .line 228
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    :cond_9
    return-object v17

    .line 179
    .end local v14    # "responseCode":I
    .end local v15    # "responseMessage":Ljava/lang/String;
    :cond_a
    const/16 v17, 0x1

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 180
    const-string/jumbo v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v17, "Content-Type"

    const-string/jumbo v18, "application/vnd.wap.mms-message"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 187
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    .local v12, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    .line 189
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 190
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1

    .line 196
    .end local v12    # "out":Ljava/io/OutputStream;
    :cond_b
    const-string/jumbo v17, "Unknown HTTP method: Method must be one of POST or GET."

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 198
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unknown HTTP method: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 213
    .restart local v14    # "responseCode":I
    .restart local v15    # "responseMessage":Ljava/lang/String;
    :cond_c
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 214
    .local v10, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .local v5, "byteOut":Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 217
    .local v4, "buf":[B
    :goto_2
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "count":I
    if-lez v7, :cond_d

    .line 218
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v4, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 220
    :cond_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 221
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 222
    .local v3, "body":[B
    new-instance v17, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v3, v1}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;-><init>(I[BLcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    if-eqz v6, :cond_e

    .line 228
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    :cond_e
    return-object v17
.end method

.method private static logHttpHeaders(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    .line 237
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 240
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 241
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 242
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HTTP headers:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 234
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
