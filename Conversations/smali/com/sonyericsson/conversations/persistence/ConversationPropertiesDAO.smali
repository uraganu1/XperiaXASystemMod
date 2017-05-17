.class public Lcom/sonyericsson/conversations/persistence/ConversationPropertiesDAO;
.super Ljava/lang/Object;
.source "ConversationPropertiesDAO.java"

# interfaces
.implements Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;


# instance fields
.field private final mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/persistence/DatabaseHelper;)V
    .locals 0
    .param p1, "databaseHelper"    # Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesDAO;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public getProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .locals 14
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 34
    const-string/jumbo v13, "conversation_id=?"

    .line 36
    .local v13, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 40
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 41
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 43
    .local v8, "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesDAO;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "conversation_properties"

    const-string/jumbo v3, "conversation_id=?"

    const/4 v2, 0x0

    .line 45
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 46
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "muted"

    .line 47
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 49
    .local v12, "isMutedColumnIdx":I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v11, 0x1

    .line 51
    .local v11, "isMuted":Z
    :goto_0
    new-instance v9, Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    invoke-direct {v9, p1}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v9, "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    :try_start_1
    invoke-virtual {v9, v11}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->setIsMuted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8    # "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    move-object v8, v9

    .line 55
    .end local v9    # "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .end local v11    # "isMuted":Z
    .end local v12    # "isMutedColumnIdx":I
    :cond_0
    if-eqz v10, :cond_1

    .line 56
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    return-object v8

    .line 49
    .restart local v8    # "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .restart local v12    # "isMutedColumnIdx":I
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "isMuted":Z
    goto :goto_0

    .line 54
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "isMuted":Z
    .end local v12    # "isMutedColumnIdx":I
    :catchall_0
    move-exception v1

    .line 55
    .end local v8    # "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    :goto_1
    if-eqz v10, :cond_3

    .line 56
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_3
    throw v1

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isMuted":Z
    .restart local v12    # "isMutedColumnIdx":I
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .local v8, "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    goto :goto_1
.end method

.method public replaceProperties(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V
    .locals 5
    .param p1, "conversationProperties"    # Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 65
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v3, p0, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesDAO;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 66
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "conversation_id"

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v3, "muted"

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->isMuted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string/jumbo v3, "conversation_properties"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 63
    return-void
.end method
