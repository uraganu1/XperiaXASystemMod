.class public Lcom/sonyericsson/conversations/starstatus/StarStatusManager;
.super Ljava/lang/Object;
.source "StarStatusManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/starstatus/StarStatusApi;


# instance fields
.field private mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

.field private mStarStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/persistence/DatabaseHelper;)V
    .locals 1
    .param p1, "databaseHelper"    # Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mStarStatusListeners:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .line 41
    return-void
.end method

.method private fireOnStarStatusChanged(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)V
    .locals 3
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "starStatus"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .prologue
    .line 245
    iget-object v2, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mStarStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    .line 246
    .local v0, "listener":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;->onStarStatusChanged(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)V

    goto :goto_0

    .line 244
    .end local v0    # "listener":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;
    :cond_0
    return-void
.end method

.method private getDeleteSelection(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "deleteColumn"    # Ljava/lang/String;
    .param p2, "nbrOfPlaceHolders"    # I

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    .local v1, "selectionBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 154
    if-lez v0, :cond_0

    .line 155
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMessageStarStatusIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 13
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageKey"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "message_key"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v12, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "=?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 214
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-wide/16 v10, -0x1

    .line 215
    .local v10, "index":J
    const/4 v8, 0x0

    .line 217
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "starred_messages"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    .line 218
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 217
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 220
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 222
    .local v9, "indexColumnIndex":I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v10, v0

    .line 225
    .end local v9    # "indexColumnIndex":I
    :cond_0
    if-eqz v8, :cond_1

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    return-wide v10

    .line 224
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 225
    if-eqz v8, :cond_2

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_2
    throw v0
.end method

.method private insertOrUpdateStarStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)J
    .locals 8
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "conversationIdKey"    # Ljava/lang/String;
    .param p3, "messageKey"    # Ljava/lang/String;
    .param p4, "starStatus"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .prologue
    .line 191
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "conversation_id"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v5, "message_key"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v5, "star_status"

    invoke-virtual {p4}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getMessageStarStatusIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    .local v0, "index":J
    const-wide/16 v6, -0x1

    cmp-long v5, v6, v0

    if-eqz v5, :cond_0

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 202
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string/jumbo v5, "starred_messages"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    return-wide v0

    .line 205
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v5, "starred_messages"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    return-wide v6
.end method


# virtual methods
.method public deleteConversationStarStatuses(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "conversationIds":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    iget-object v6, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 137
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "conversationIdIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v5, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v6, 0x1f4

    if-ge v3, v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 142
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_0
    const-string/jumbo v6, "conversation_id"

    .line 145
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 144
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getDeleteSelection(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v7, "starred_messages"

    .line 147
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v3    # "i":I
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public deleteMessageStarStatuses(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)V
    .locals 9
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "messageKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v4

    .line 117
    .local v4, "oldConversationStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, "messageKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v6, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v7, 0x1f4

    if-ge v1, v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_0
    const-string/jumbo v7, "message_key"

    .line 124
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 123
    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getDeleteSelection(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "selection":Ljava/lang/String;
    const-string/jumbo v8, "starred_messages"

    .line 126
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v8, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v3

    .line 129
    .local v3, "newConversationStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    if-eq v4, v3, :cond_2

    .line 130
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->fireOnStarStatusChanged(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)V

    .line 114
    :cond_2
    return-void
.end method

.method public getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    .locals 10
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 166
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v2, "conversation_id"

    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "=?"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, " AND "

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "star_status"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string/jumbo v2, "=?"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 170
    .local v9, "selectionBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 171
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 172
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    .line 174
    .local v4, "selectionArguments":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 176
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "starred_messages"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    .line 177
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 176
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 179
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v8, :cond_0

    .line 184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_0
    return-object v1

    .line 181
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    if-eqz v8, :cond_2

    .line 184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_2
    return-object v1

    .line 182
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 183
    if-eqz v8, :cond_3

    .line 184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_3
    throw v1
.end method

.method public getStarStatus(Ljava/lang/String;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    .locals 12
    .param p1, "messageKey"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "message_key"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .local v9, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "=?"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 51
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 52
    .local v8, "cursor":Landroid/database/Cursor;
    sget-object v10, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .line 55
    .local v10, "starStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    const/4 v1, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 59
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "starred_messages"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    .line 60
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 59
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 62
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v1, "star_status"

    .line 63
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 65
    .local v11, "starredStatusColumnIndex":I
    invoke-static {}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->values()[Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v10, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v11    # "starredStatusColumnIndex":I
    :cond_0
    if-eqz v8, :cond_1

    .line 69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_1
    return-object v10

    .line 67
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 68
    if-eqz v8, :cond_2

    .line 69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_2
    throw v1
.end method

.method public getStarredMessageKeys()Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "star_status"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v2, " = "

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->ordinal()I

    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 79
    .local v10, "selection":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 80
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v11, "starredMessages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "starred_messages"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 83
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 85
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "message_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 86
    .local v9, "messageKeyColIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageKeyColIndex":I
    :catchall_0
    move-exception v1

    .line 90
    if-eqz v8, :cond_0

    .line 91
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    throw v1

    .line 90
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageKeyColIndex":I
    :cond_1
    if-eqz v8, :cond_2

    .line 91
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_2
    return-object v11
.end method

.method public registerListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mStarStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public setStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)J
    .locals 6
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "messageKey"    # Ljava/lang/String;
    .param p3, "starStatus"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .prologue
    .line 100
    iget-object v3, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v2

    .line 103
    .local v2, "oldConversationStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->insertOrUpdateStarStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)J

    move-result-wide v4

    .line 105
    .local v4, "starredMessageId":J
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v1

    .line 106
    .local v1, "newConversationStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    if-eq v2, v1, :cond_0

    .line 107
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->fireOnStarStatusChanged(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)V

    .line 109
    :cond_0
    return-wide v4
.end method

.method public unregisterListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;->mStarStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method
