.class public Lcom/sonymobile/conversations/transaction/TransactionInvokeProviderWrapper;
.super Ljava/lang/Object;
.source "TransactionInvokeProviderWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteByUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0, p1, v1, v1}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public static deletePendingMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 228
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 232
    .local v0, "msgId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    const/4 v5, 0x0

    .line 232
    invoke-static {p0, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public static getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v0, "ct_l"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 76
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 79
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 81
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 82
    return-object v0

    .line 85
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 84
    throw v0
.end method

.method private static getDownloadFailedToast(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 206
    const/4 v4, 0x0

    .line 209
    .local v4, "toast":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .line 212
    .local v2, "ind":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 213
    .local v5, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "subject":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 217
    new-instance v7, Lcom/sonyericsson/conversations/model/Participant;

    .line 218
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 217
    :goto_1
    invoke-direct {v7, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormatted(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 219
    .local v1, "from":Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const v7, 0x7f0b00e0

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .end local v1    # "from":Landroid/text/SpannableStringBuilder;
    .end local v2    # "ind":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v4    # "toast":Ljava/lang/String;
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return-object v4

    .line 214
    .restart local v2    # "ind":Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v4    # "toast":Ljava/lang/String;
    .restart local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    const v6, 0x7f0b00ea

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "subject":Ljava/lang/String;
    goto :goto_0

    .line 218
    :cond_1
    const-string/jumbo v6, ""
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 220
    .end local v2    # "ind":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static scheduleRetry(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isManualRequest"    # Z
    .param p3, "isPermanentError"    # Z

    .prologue
    .line 94
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 96
    .local v20, "msgId":J
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v31

    .line 97
    .local v31, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v2, "protocol"

    const-string/jumbo v3, "mms"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    const-string/jumbo v2, "message"

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    const/16 v33, 0x0

    const/4 v14, 0x0

    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 101
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 100
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v14

    .line 102
    .local v14, "cursor":Landroid/database/Cursor;
    const/16 v30, 0x0

    .line 103
    .local v30, "toast":Ljava/lang/String;
    if-nez v14, :cond_7

    .line 202
    if-eqz v14, :cond_0

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v33, :cond_1

    throw v33

    :catch_0
    move-exception v33

    goto :goto_0

    .line 104
    :cond_1
    return-void

    .line 144
    .end local v30    # "toast":Ljava/lang/String;
    .local v12, "current":J
    .local v16, "errorType":I
    .local v17, "isRetryDownloading":Z
    .local v22, "msgType":I
    .local v23, "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .local v26, "retryIndex":I
    .local v27, "scheme":Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
    .local v32, "values":Landroid/content/ContentValues;
    :cond_2
    const/16 v16, 0xa

    .line 145
    if-eqz v17, :cond_b

    .line 146
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 147
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 148
    const-string/jumbo v2, "thread_id"

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 149
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 146
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    .line 151
    .local v10, "c":Landroid/database/Cursor;
    const-wide/16 v28, -0x1

    .line 152
    .local v28, "threadId":J
    if-eqz v10, :cond_4

    .line 154
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v28

    .line 158
    :cond_3
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, v28, v2

    if-eqz v2, :cond_5

    .line 164
    if-eqz p2, :cond_a

    .line 167
    invoke-static/range {p0 .. p1}, Lcom/sonymobile/conversations/transaction/TransactionInvokeProviderWrapper;->getDownloadFailedToast(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v30

    .line 173
    .end local v23    # "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 174
    const/16 v3, 0x87

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 180
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v28    # "threadId":J
    :cond_6
    :goto_2
    const-string/jumbo v2, "err_type"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string/jumbo v2, "retry_index"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string/jumbo v2, "last_try"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string/jumbo v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 185
    .local v11, "columnIndex":I
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 186
    .local v18, "id":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 187
    sget-object v4, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, v32

    .line 186
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    if-eqz v23, :cond_7

    .line 191
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 192
    .local v5, "readValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 194
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 193
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    .line 195
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 106
    .end local v5    # "readValues":Landroid/content/ContentValues;
    .end local v11    # "columnIndex":I
    .end local v12    # "current":J
    .end local v16    # "errorType":I
    .end local v17    # "isRetryDownloading":Z
    .end local v18    # "id":J
    .end local v22    # "msgType":I
    .end local v26    # "retryIndex":I
    .end local v27    # "scheme":Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    const-string/jumbo v2, "msg_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 109
    .restart local v22    # "msgType":I
    const-string/jumbo v2, "retry_index"

    .line 108
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v26, v2, 0x1

    .line 113
    .restart local v26    # "retryIndex":I
    const/16 v16, 0x1

    .line 115
    .restart local v16    # "errorType":I
    new-instance v27, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;-><init>(I)V

    .line 117
    .restart local v27    # "scheme":Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
    new-instance v32, Landroid/content/ContentValues;

    const/4 v2, 0x4

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 118
    .restart local v32    # "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 119
    .restart local v12    # "current":J
    const/16 v2, 0x82

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    const/16 v17, 0x1

    .line 120
    .restart local v17    # "isRetryDownloading":Z
    :goto_3
    const/16 v23, 0x0

    .line 122
    .restart local v23    # "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    if-nez p3, :cond_2

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_2

    .line 123
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v2

    add-long v24, v12, v2

    .line 131
    .local v24, "retryAt":J
    const-string/jumbo v2, "due_time"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    if-eqz v17, :cond_6

    .line 135
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v15

    .line 136
    .local v15, "downloadManager":Lcom/android/mms/util/DownloadManager;
    const/16 v2, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 137
    invoke-virtual {v15}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v9

    .line 139
    .local v9, "autoDownload":Z
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    if-eqz v9, :cond_6

    .line 140
    sget-object v23, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .local v23, "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    goto/16 :goto_2

    .line 119
    .end local v9    # "autoDownload":Z
    .end local v15    # "downloadManager":Lcom/android/mms/util/DownloadManager;
    .end local v17    # "isRetryDownloading":Z
    .end local v23    # "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .end local v24    # "retryAt":J
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "isRetryDownloading":Z
    goto :goto_3

    .line 157
    .restart local v10    # "c":Landroid/database/Cursor;
    .local v23, "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .restart local v28    # "threadId":J
    :catchall_0
    move-exception v2

    .line 158
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 157
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 202
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v12    # "current":J
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "errorType":I
    .end local v17    # "isRetryDownloading":Z
    .end local v22    # "msgType":I
    .end local v23    # "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .end local v26    # "retryIndex":I
    .end local v27    # "scheme":Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
    .end local v28    # "threadId":J
    .end local v32    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object/from16 v34, v3

    move-object v3, v2

    move-object/from16 v2, v34

    :goto_4
    if-eqz v14, :cond_9

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_5
    if-eqz v3, :cond_10

    throw v3

    .line 169
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v12    # "current":J
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "errorType":I
    .restart local v17    # "isRetryDownloading":Z
    .restart local v22    # "msgType":I
    .restart local v23    # "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .restart local v26    # "retryIndex":I
    .restart local v27    # "scheme":Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
    .restart local v28    # "threadId":J
    .restart local v32    # "values":Landroid/content/ContentValues;
    :cond_a
    :try_start_7
    sget-object v23, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DOWNLOAD_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .local v23, "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    goto/16 :goto_1

    .line 176
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v28    # "threadId":J
    .local v23, "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_b
    sget-object v23, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .local v23, "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    goto/16 :goto_2

    .line 199
    .end local v12    # "current":J
    .end local v16    # "errorType":I
    .end local v17    # "isRetryDownloading":Z
    .end local v22    # "msgType":I
    .end local v23    # "notificationType":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .end local v26    # "retryIndex":I
    .end local v27    # "scheme":Lcom/sonymobile/conversations/transaction/DefaultRetryScheme;
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_c
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 200
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/util/DownloadManager;->showToastToUser(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 202
    :cond_d
    if-eqz v14, :cond_e

    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_e
    :goto_6
    if-eqz v33, :cond_11

    throw v33

    :catch_2
    move-exception v33

    goto :goto_6

    .end local v14    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v4

    if-nez v3, :cond_f

    move-object v3, v4

    goto :goto_5

    :cond_f
    if-eq v3, v4, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_10
    throw v2

    .line 93
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_11
    return-void

    .line 202
    .end local v14    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    move-object/from16 v3, v33

    goto :goto_4
.end method
