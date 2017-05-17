.class public Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
.super Ljava/lang/Object;
.source "HttpRequestParamsHandler.java"


# static fields
.field private static msisdnNotificationStatus:Z


# instance fields
.field public final NOTIFICATION_ID:I

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private final mPrefFile:Landroid/content/SharedPreferences;

.field private final mPrefFileEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->msisdnNotificationStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x6f

    .line 53
    iput v1, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->NOTIFICATION_ID:I

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const/4 v1, 0x1

    .line 74
    new-array v0, v1, [Lcom/sonymobile/rcs/utils/logger/Appender;

    new-instance v1, Lcom/sonymobile/rcs/platform/logger/AndroidAppender;

    invoke-direct {v1}, Lcom/sonymobile/rcs/platform/logger/AndroidAppender;-><init>()V

    aput-object v1, v0, v2

    .line 77
    .local v0, "appenders":[Lcom/sonymobile/rcs/utils/logger/Appender;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->setAppenders([Lcom/sonymobile/rcs/utils/logger/Appender;)V

    const-string/jumbo v1, "provisioning_pref_file"

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->mPrefFile:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "provisioning_pref_file"

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->mPrefFileEditor:Landroid/content/SharedPreferences$Editor;

    .line 80
    return-void
.end method


# virtual methods
.method public backupConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldImsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, "rcsSettingsDump":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-nez v11, :cond_1

    .line 156
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "rcse_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v1, "backupSettings":Ljava/io/File;
    if-nez p3, :cond_2

    .line 204
    :cond_0
    :goto_1
    return-void

    .line 154
    .end local v1    # "backupSettings":Ljava/io/File;
    :cond_1
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "started backupConfiguration "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "backupSettings":Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .line 163
    .local v2, "bufferedOutput":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v9, "settings":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .local v3, "bufferedOutput":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_4

    .line 192
    if-eqz v3, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v4

    .line 197
    .local v4, "e":Ljava/io/IOException;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 198
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "CountryCode"

    .line 167
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 172
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "="

    .line 173
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    .line 175
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    const/4 v11, 0x0

    .line 177
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 200
    :catch_1
    move-exception v6

    move-object v2, v3

    .line 180
    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "settings":Ljava/lang/StringBuilder;
    .local v6, "fileNotFoundException":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v11

    if-nez v11, :cond_5

    .line 192
    :goto_4
    if-eqz v2, :cond_0

    .line 194
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 200
    :catch_2
    move-exception v4

    .line 197
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 198
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 181
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fileNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 200
    .end local v6    # "fileNotFoundException":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    .line 192
    :goto_5
    if-nez v2, :cond_9

    .line 200
    :cond_6
    :goto_6
    throw v11

    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v10

    .line 184
    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .local v10, "unsupportedEncodingException":Ljava/io/UnsupportedEncodingException;
    :goto_7
    :try_start_8
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v11

    if-nez v11, :cond_7

    .line 192
    :goto_8
    if-eqz v2, :cond_0

    .line 194
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 200
    :catch_4
    move-exception v4

    .line 197
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 198
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_a
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unsupportedEncodingException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_8

    .line 200
    .end local v10    # "unsupportedEncodingException":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v8

    .line 188
    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .local v8, "ioe":Ljava/io/IOException;
    :goto_9
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v11

    if-nez v11, :cond_8

    .line 192
    :goto_a
    if-eqz v2, :cond_0

    .line 194
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    .line 200
    :catch_6
    move-exception v4

    .line 197
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 198
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_c
    iget-object v11, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    .line 194
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_9
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_6

    .line 200
    :catch_7
    move-exception v4

    .line 197
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v12, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 198
    iget-object v12, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v9    # "settings":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .local v2, "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_5

    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_5

    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v8

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_9

    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_9
    move-exception v8

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_9

    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    :catch_a
    move-exception v10

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_7

    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_b
    move-exception v10

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_7

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "settings":Ljava/lang/StringBuilder;
    .local v2, "bufferedOutput":Ljava/io/BufferedOutputStream;
    :catch_c
    move-exception v6

    goto/16 :goto_3

    .end local v2    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .restart local v9    # "settings":Ljava/lang/StringBuilder;
    :catch_d
    move-exception v6

    move-object v2, v3

    .end local v3    # "bufferedOutput":Ljava/io/BufferedOutputStream;
    .local v2, "bufferedOutput":Ljava/io/BufferedOutputStream;
    goto/16 :goto_3
.end method

.method public restoreConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentImsi"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 217
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rcse_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v6, "restoreSettings":Ljava/io/File;
    const/4 v3, 0x0

    .line 221
    .local v3, "fStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    .end local v3    # "fStream":Ljava/io/FileInputStream;
    .local v4, "fStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 224
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 239
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-nez v8, :cond_7

    .line 255
    :goto_1
    if-nez v4, :cond_9

    .line 265
    :cond_0
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    move-object v3, v4

    .line 270
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return-void

    .line 214
    .end local v6    # "restoreSettings":Ljava/io/File;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "started restoreConfiguration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    .restart local v6    # "restoreSettings":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v7, Ljava/util/TreeMap;

    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v7, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 231
    .local v7, "restoredSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 235
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 237
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->restoreSettings(Ljava/util/TreeMap;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 266
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "restoredSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 245
    .end local v4    # "fStream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_4
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-nez v8, :cond_b

    .line 255
    :goto_6
    if-nez v3, :cond_c

    .line 265
    :cond_4
    :goto_7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 266
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "restoredSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v8, 0x0

    :try_start_5
    const-string/jumbo v9, "="

    .line 232
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 266
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "restoredSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 250
    .end local v4    # "fStream":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_8
    :try_start_6
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v8

    if-nez v8, :cond_d

    .line 255
    :goto_9
    if-nez v3, :cond_e

    .line 265
    :cond_6
    :goto_a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 266
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    :cond_7
    :try_start_7
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "File not exist: no config data was found"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 266
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    move-object v3, v4

    .line 255
    .end local v4    # "fStream":Ljava/io/FileInputStream;
    :goto_b
    if-nez v3, :cond_f

    .line 265
    :cond_8
    :goto_c
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_10

    .line 266
    :goto_d
    throw v8

    .line 257
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    :cond_9
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 263
    :catch_2
    move-exception v2

    .line 259
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Couldn\'t close the file stream. Provisioning will be continued."

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v3, v4

    .end local v4    # "fStream":Ljava/io/FileInputStream;
    .local v3, "fStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 246
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fStream":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_b
    :try_start_9
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Back-up of previous SIM configuration is not available. Provisioning will be continued"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 266
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v8

    goto :goto_b

    .line 257
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_c
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    .line 263
    :catch_3
    move-exception v2

    .line 259
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 260
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Couldn\'t close the file stream. Provisioning will be continued."

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 251
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_d
    :try_start_b
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Couldn\'t read the back-up configuration file. Provisioning will be continued."

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    .line 257
    :cond_e
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_a

    .line 263
    :catch_4
    move-exception v2

    .line 259
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 260
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Couldn\'t close the file stream. Provisioning will be continued."

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_a

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    :cond_f
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_c

    .line 263
    :catch_5
    move-exception v2

    .line 259
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 260
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Couldn\'t close the file stream. Provisioning will be continued."

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_c

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    :cond_10
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_d

    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fStream":Ljava/io/FileInputStream;
    .restart local v3    # "fStream":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .local v3, "fStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    goto/16 :goto_8

    .end local v3    # "fStream":Ljava/io/FileInputStream;
    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "fStream":Ljava/io/FileInputStream;
    .local v3, "fStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .local v3, "fStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    goto/16 :goto_5

    .end local v3    # "fStream":Ljava/io/FileInputStream;
    .restart local v4    # "fStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fStream":Ljava/io/FileInputStream;
    .local v3, "fStream":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method public setAfterReboot(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRebooted"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->mPrefFileEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "after_boot"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->mPrefFileEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method

.method public setMsisdnNotificationStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 121
    sput-boolean p1, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->msisdnNotificationStatus:Z

    .line 122
    return-void
.end method

.method public setProvisioned(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 113
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningTermsAccepted(Z)V

    .line 114
    return-void

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setProvisioned(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isProvisioned"    # Z

    .prologue
    .line 89
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    invoke-static {p1, p2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    .line 96
    if-eqz p2, :cond_1

    .line 99
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningTermsAccepted(Z)V

    .line 100
    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method public wasRebooted()Z
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->mPrefFile:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "after_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
