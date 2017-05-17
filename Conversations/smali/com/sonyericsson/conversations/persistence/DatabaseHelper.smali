.class public Lcom/sonyericsson/conversations/persistence/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string/jumbo v0, "conversations.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 79
    return-void
.end method

.method private upgradeConversationPropertiesTableToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 153
    const-string/jumbo v0, "ALTER TABLE conversation_properties RENAME TO conversation_properties_v1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "CREATE TABLE  conversation_properties (conversation_id TEXT PRIMARY KEY, muted INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "INSERT INTO conversation_properties (conversation_id, muted) SELECT conversation_id, muted FROM conversation_properties_v1 GROUP BY conversation_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "DROP TABLE conversation_properties_v1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    return-void

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    throw v0
.end method

.method private upgradeDraftTableToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 171
    const-string/jumbo v0, "ALTER TABLE drafts ADD COLUMN priority INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 168
    return-void

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 85
    const-string/jumbo v0, "CREATE TABLE drafts (_id INTEGER PRIMARY KEY AUTOINCREMENT, conversation_id TEXT, subject TEXT, bodytext TEXT, timestamp INTEGER,priority INTEGER DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "CREATE TABLE draft_uris (_id INTEGER PRIMARY KEY AUTOINCREMENT, draft_id INTEGER, uri TEXT, FOREIGN KEY(draft_id) REFERENCES drafts(_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "CREATE TABLE draft_participants (_id INTEGER PRIMARY KEY AUTOINCREMENT, draft_id INTEGER, participant TEXT, FOREIGN KEY(draft_id) REFERENCES drafts(_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "CREATE TABLE conversation_properties (conversation_id TEXT PRIMARY KEY, muted INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "CREATE TABLE starred_messages (_id INTEGER PRIMARY KEY AUTOINCREMENT, conversation_id TEXT, message_key TEXT, star_status INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DB downgrade requested but ignored. Old version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, " New version: "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    const-string/jumbo v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 128
    const-string/jumbo v0, "Upgrade database table from "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 129
    packed-switch p2, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 131
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->upgradeConversationPropertiesTableToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->upgradeDraftTableToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
