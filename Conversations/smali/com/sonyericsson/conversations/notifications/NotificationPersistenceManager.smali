.class public Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;
.super Ljava/lang/Object;
.source "NotificationPersistenceManager.java"


# instance fields
.field private final mDataStorage:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "notification-persistence"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->mDataStorage:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method


# virtual methods
.method restoreHandlerItemsIfPossible(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V
    .locals 8
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p2, "handler"    # Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    .prologue
    const/4 v7, 0x0

    .line 53
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->mDataStorage:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "serializedData":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 61
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 62
    .local v1, "data":[B
    array-length v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 69
    if-eqz v0, :cond_1

    .line 71
    :try_start_1
    invoke-interface {p2, v0}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->restoreFromBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 65
    .end local v1    # "data":[B
    .local v0, "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 66
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v5

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    .restart local v1    # "data":[B
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t restore notification handler items: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->mDataStorage:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V
    .locals 8
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p2, "handler"    # Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-interface {p2}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->convertToBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 32
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 33
    .local v4, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 37
    .local v5, "serialized":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 39
    .local v2, "data":[B
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 43
    .local v5, "serialized":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 46
    .end local v2    # "data":[B
    .end local v5    # "serialized":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 47
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->mDataStorage:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    :cond_0
    return-void

    .line 40
    .local v5, "serialized":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v6, "Couldn\'t save notification aggregation handler"

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 42
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 43
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw v6
.end method
