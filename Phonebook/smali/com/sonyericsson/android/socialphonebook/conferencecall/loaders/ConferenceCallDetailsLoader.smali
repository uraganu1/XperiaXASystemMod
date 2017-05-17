.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ConferenceCallDetailsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallsIds:[I

.field private mCallsNumbers:[Ljava/lang/String;

.field mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callsIds"    # [I
    .param p3, "numbers"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mCallsIds:[I

    .line 44
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mCallsNumbers:[Ljava/lang/String;

    .line 41
    return-void

    :cond_0
    move-object v0, v1

    .line 43
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 44
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;-><init>(Landroid/content/Context;[I[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private getConferenceCallDetails()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 85
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "duration"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "date"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 89
    .local v2, "callsProjection":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v7, "callsSelection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "_id"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v1, " IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mCallsIds:[I

    array-length v1, v1

    if-ge v8, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mCallsIds:[I

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 101
    .local v6, "callsCursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, "callsCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method private getConferenceParticipants()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 108
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v10, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;>;"
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    .line 111
    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "display_name"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "type"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string/jumbo v5, "label"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 112
    const-string/jumbo v5, "photo_id"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 115
    .local v4, "phoneLookupProjection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mCallsNumbers:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move v15, v5

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    aget-object v9, v16, v15

    .line 116
    .local v9, "number":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 117
    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, "phoneUri":Landroid/net/Uri;
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    invoke-direct {v8}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;-><init>()V

    .line 119
    .local v8, "contactData":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    iput-object v9, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumber:Ljava/lang/String;

    .line 121
    const/4 v14, 0x0

    const/4 v11, 0x0

    .local v11, "phoneLookupCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 121
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 123
    .local v11, "phoneLookupCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const-string/jumbo v5, "display_name"

    .line 124
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactName:Ljava/lang/String;

    .line 127
    const-string/jumbo v5, "type"

    .line 126
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumberType:I

    .line 130
    const-string/jumbo v5, "_id"

    .line 129
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 131
    .local v12, "personId":J
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    .line 134
    const-string/jumbo v5, "photo_id"

    .line 133
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->photoId:J

    .line 141
    .end local v12    # "personId":J
    :goto_1
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    if-eqz v14, :cond_5

    throw v14

    .line 136
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    .line 137
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactName:Ljava/lang/String;

    .line 138
    const/4 v5, -0x1

    iput v5, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->phoneNumberType:I

    .line 139
    const-wide/16 v6, 0x0

    iput-wide v6, v8, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->photoId:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 142
    .end local v11    # "phoneLookupCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    :goto_3
    if-eqz v11, :cond_2

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    if-eqz v6, :cond_4

    throw v6

    .restart local v11    # "phoneLookupCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v14

    goto :goto_2

    .end local v11    # "phoneLookupCursor":Landroid/database/Cursor;
    :catch_2
    move-exception v7

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_4

    :cond_3
    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v5

    .line 115
    .restart local v11    # "phoneLookupCursor":Landroid/database/Cursor;
    :cond_5
    add-int/lit8 v5, v15, 0x1

    move v15, v5

    goto/16 :goto_0

    .line 144
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v8    # "contactData":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    .end local v9    # "number":Ljava/lang/String;
    .end local v11    # "phoneLookupCursor":Landroid/database/Cursor;
    :cond_6
    return-object v10

    .line 142
    .restart local v3    # "phoneUri":Landroid/net/Uri;
    .restart local v8    # "contactData":Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    .restart local v9    # "number":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v6, v14

    goto :goto_3
.end method


# virtual methods
.method public deliverResult(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V
    .locals 1
    .param p1, "data"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 151
    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 154
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 148
    :cond_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->deliverResult(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V

    return-void
.end method

.method public loadInBackground()Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->getConferenceParticipants()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->setParticipants(Ljava/util/List;)V

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mCallsIds:[I

    if-eqz v1, :cond_8

    .line 65
    const/4 v0, 0x0

    .local v0, "callsCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->getConferenceCallDetails()Landroid/database/Cursor;

    move-result-object v0

    .line 66
    .local v0, "callsCursor":Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 67
    :cond_1
    return-object v1

    .line 70
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 74
    const-string/jumbo v3, "duration"

    .line 73
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->setDuration(J)V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    .line 76
    const-string/jumbo v3, "date"

    .line 75
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->setDate(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :cond_3
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    throw v2

    :catch_1
    move-exception v2

    goto :goto_1

    .end local v0    # "callsCursor":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2
    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    throw v2

    :catch_3
    move-exception v3

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_3

    :cond_6
    if-eq v2, v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v1

    .line 81
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    return-object v1

    .line 78
    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->loadInBackground()Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->deliverResult(Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->mConferenceCallData:Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;

    if-nez v0, :cond_2

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/loaders/ConferenceCallDetailsLoader;->forceLoad()V

    .line 48
    :cond_2
    return-void
.end method
