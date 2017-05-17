.class public Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;
.super Ljava/lang/Object;
.source "NotificationInvokeProviderWrapper.java"


# static fields
.field private static final sMediaInternalUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->sMediaInternalUri:Landroid/net/Uri;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIncomingMsgLedInfo(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 99
    return-object v1

    .line 102
    :cond_0
    sget-object v0, Lcom/sonymobile/settings/illumination/Illumination;->INC_MESSAGE_URI:Landroid/net/Uri;

    .line 104
    .local v0, "URI_INCOMING_MESSAGE":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getMsgLedInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getMediaIdByFileName(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "defaultId"    # J

    .prologue
    const/4 v4, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-wide p2

    .line 33
    :cond_0
    move-wide v8, p2

    .line 34
    .local v8, "id":J
    const-string/jumbo v3, "is_notification=1"

    .line 35
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "_display_name"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 38
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->sMediaInternalUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 40
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 41
    :try_start_0
    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 42
    .local v11, "nameIdx":I
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 43
    .local v7, "idIdx":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 52
    .end local v7    # "idIdx":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameIdx":I
    :cond_1
    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_2
    return-wide v8

    .line 43
    .restart local v7    # "idIdx":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "nameIdx":I
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    .end local v7    # "idIdx":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameIdx":I
    :catchall_0
    move-exception v0

    .line 52
    if-eqz v6, :cond_4

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_4
    throw v0
.end method

.method public static getMediaInfoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->sMediaInternalUri:Landroid/net/Uri;

    return-object v0
.end method

.method private static getMsgLedInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 125
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "color"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 128
    .local v2, "PROJECTION":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationSound(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    if-nez p0, :cond_0

    .line 65
    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "notification_sound"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 70
    .local v4, "selArg":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 73
    .local v9, "sound":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "name= ?"

    const/4 v2, 0x0

    .line 75
    const/4 v5, 0x0

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 76
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "colIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 83
    .end local v6    # "colIndex":I
    .end local v9    # "sound":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v9

    .line 80
    .restart local v9    # "sound":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 83
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_2

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 83
    if-eqz v7, :cond_3

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_3
    throw v0
.end method
