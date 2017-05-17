.class public Lcom/android/contacts/editor/AggregationSuggestionEngine;
.super Landroid/os/HandlerThread;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;
    }
.end annotation


# static fields
.field private static final MAX_SUGGESTION_COUNT:I = 0x3

.field private static final MESSAGE_DATA_CURSOR:I = 0x2

.field private static final MESSAGE_NAME_CHANGE:I = 0x1

.field private static final MESSAGE_RESET:I = 0x0

.field private static final SUGGESTION_LOOKUP_DELAY_MILLIS:J = 0x12cL


# instance fields
.field private mContactId:J

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

.field private mMainHandler:Landroid/os/Handler;

.field private mSuggestedContactIds:[J

.field private mSuggestionsUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string/jumbo v0, "AggregationSuggestions"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p2, p3}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_1
    return-void
.end method

.method private buildAggregationSuggestionUri(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/net/Uri;
    .locals 6
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, "nameSb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "data4"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v3, "data2"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v3, "data5"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v3, "data3"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v3, "data6"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 209
    const-string/jumbo v3, "data1"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 212
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v2, "phoneticNameSb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "data9"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v3, "data8"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v3, "data7"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 218
    const/4 v3, 0x0

    return-object v3

    .line 221
    :cond_1
    invoke-static {}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;->builder()Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    .line 222
    const/4 v4, 0x3

    .line 221
    invoke-virtual {v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    .line 223
    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 221
    invoke-virtual {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v0

    .line 225
    .local v0, "builder":Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 229
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 233
    :cond_3
    invoke-virtual {v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private loadAggregationSuggestions(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 302
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v3

    .line 306
    const-string/jumbo v3, "in_visible_group = 1 "

    move-object v1, p1

    move-object v5, v4

    .line 305
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 308
    return-void

    .line 313
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 314
    return-void

    .line 317
    :cond_1
    :try_start_1
    invoke-direct {p0, v8}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->updateSuggestedContactIds(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 318
    .local v6, "changed":Z
    if-nez v6, :cond_2

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 319
    return-void

    .line 322
    :cond_2
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v7, v1

    .line 324
    .local v7, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_4

    .line 325
    if-lez v10, :cond_3

    .line 326
    const/16 v1, 0x2c

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    aget-wide v2, v1, v10

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 330
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v1, " AND "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    .line 335
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "contact_id"

    const/4 v4, 0x0

    .line 334
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 336
    .local v9, "dataCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    return-void

    .line 337
    .end local v6    # "changed":Z
    .end local v7    # "count":I
    .end local v9    # "dataCursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 337
    throw v1
.end method

.method private updateSuggestedContactIds(Landroid/database/Cursor;)Z
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 343
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 344
    .local v1, "count":I
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v5, v5

    if-eq v1, v5, :cond_2

    const/4 v0, 0x1

    .line 345
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_1

    .line 346
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 348
    .local v2, "contactId":J
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v5, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-gez v5, :cond_0

    .line 349
    const/4 v0, 0x1

    .line 355
    .end local v2    # "contactId":J
    :cond_1
    if-eqz v0, :cond_4

    .line 356
    new-array v5, v1, [J

    iput-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 357
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 358
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 359
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 360
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "changed":Z
    .end local v4    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 362
    .restart local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 365
    .end local v4    # "i":I
    :cond_4
    return v0
.end method


# virtual methods
.method public containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z
    .locals 4
    .param p1, "suggestion"    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    .param p2, "rawContactId"    # J

    .prologue
    .line 443
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 444
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 445
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 446
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    iget-wide v2, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 447
    const/4 v2, 0x1

    return v2

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected deliverNotification(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 373
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;->onAggregationSuggestionChange()V

    .line 368
    :cond_1
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSuggestedContactCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 384
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 385
    const/16 v16, 0x0

    .line 386
    .local v16, "suggestion":Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    const-wide/16 v4, -0x1

    .line 387
    .local v4, "currentContactId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 388
    .end local v16    # "suggestion":Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 390
    .local v2, "contactId":J
    cmp-long v18, v2, v4

    if-eqz v18, :cond_1

    .line 391
    new-instance v16, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    invoke-direct/range {v16 .. v16}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;-><init>()V

    .line 392
    .local v16, "suggestion":Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    .line 395
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    .line 396
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    move-wide v4, v2

    .line 400
    .end local v16    # "suggestion":Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 401
    .local v14, "rawContactId":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z

    move-result v18

    if-nez v18, :cond_2

    .line 402
    new-instance v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    invoke-direct {v11}, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;-><init>()V

    .line 403
    .local v11, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iput-wide v14, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountName:Ljava/lang/String;

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    .line 407
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v11    # "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, "mimetype":Ljava/lang/String;
    const-string/jumbo v18, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 414
    .local v17, "superprimary":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 415
    if-nez v17, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 416
    :cond_3
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 418
    .end local v6    # "data":Ljava/lang/String;
    .end local v17    # "superprimary":I
    :cond_4
    const-string/jumbo v18, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 420
    .restart local v6    # "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 421
    .restart local v17    # "superprimary":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 422
    if-nez v17, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 423
    :cond_5
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 425
    .end local v6    # "data":Ljava/lang/String;
    .end local v17    # "superprimary":I
    :cond_6
    const-string/jumbo v18, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 427
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 428
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    goto/16 :goto_0

    .line 430
    .end local v6    # "data":Ljava/lang/String;
    :cond_7
    const-string/jumbo v18, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 432
    .local v8, "dataId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 433
    .local v12, "photoId":J
    cmp-long v18, v8, v12

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    goto/16 :goto_0

    .line 439
    .end local v2    # "contactId":J
    .end local v4    # "currentContactId":J
    .end local v8    # "dataId":J
    .end local v10    # "mimetype":Ljava/lang/String;
    .end local v12    # "photoId":J
    .end local v14    # "rawContactId":J
    :cond_8
    return-object v7
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 249
    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->loadAggregationSuggestions(Landroid/net/Uri;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNameChange(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 4
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->buildAggregationSuggestionUri(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    .line 175
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 178
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 178
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    .line 173
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method public quit()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 160
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 164
    :cond_1
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 169
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

.method protected scheduleSuggestionLookup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 190
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 197
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 188
    return-void
.end method

.method public setContactId(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 145
    iput-wide p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 143
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    .line 150
    return-void
.end method
