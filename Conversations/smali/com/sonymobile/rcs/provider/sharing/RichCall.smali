.class public Lcom/sonymobile/rcs/provider/sharing/RichCall;
.super Ljava/lang/Object;
.source "RichCall.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/provider/sharing/RichCall;


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private databaseUri:Landroid/net/Uri;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private maxLogEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->instance:Lcom/sonymobile/rcs/provider/sharing/RichCall;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/sonymobile/rcs/provider/sharing/RichCallData;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    .line 99
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxRichcallLogEntriesPerContact()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->maxLogEntries:I

    .line 100
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provider/sharing/RichCall;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->instance:Lcom/sonymobile/rcs/provider/sharing/RichCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    .line 79
    return-void

    .line 77
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/sharing/RichCall;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->instance:Lcom/sonymobile/rcs/provider/sharing/RichCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/sonymobile/rcs/provider/sharing/RichCall;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->instance:Lcom/sonymobile/rcs/provider/sharing/RichCall;

    return-object v0
.end method

.method private purge(Ljava/lang/String;)I
    .locals 18
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "min(_date)"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "max(_date)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "extrem":Landroid/database/Cursor;
    const-wide/16 v12, -0x1

    .local v12, "minDate":J
    const-wide/16 v10, -0x1

    .line 158
    .local v10, "maxDate":J
    if-nez v9, :cond_0

    .line 165
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    const-wide/16 v2, -0x1

    .line 170
    cmp-long v2, v12, v2

    if-nez v2, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 171
    return v2

    .line 159
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 160
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x1

    .line 161
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_2

    .line 166
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler: minDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "number_of_messages"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 180
    .local v14, "numberOfMessagesForContact":I
    if-eqz v8, :cond_5

    .line 183
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    .line 235
    :cond_4
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    return v14

    :cond_5
    const/4 v2, 0x0

    .line 181
    return v2

    :cond_6
    const/4 v2, 0x0

    .line 184
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_7

    .line 189
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->maxLogEntries:I

    if-lt v14, v2, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 204
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 207
    .local v15, "removedMessages":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_b

    .line 214
    :goto_6
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v17, "values":Landroid/content/ContentValues;
    sub-int/2addr v14, v15

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_c

    :goto_7
    const-string/jumbo v2, "number_of_messages"

    .line 226
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 230
    .local v16, "updatedRows":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : updated rows for the contact (must be 1 or 0 if no more messages) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 186
    .end local v15    # "removedMessages":I
    .end local v16    # "updatedRows":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : number of messages for this contact = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 191
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_9

    .line 194
    :goto_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    return v14

    .line 192
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Recycler : Enough place for another message, do nothing return"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 198
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Recycler : Not enough place for another message, we will have to remove something"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 208
    .restart local v15    # "removedMessages":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : messages removed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 217
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : new number of message after deletion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;IZ)Landroid/net/Uri;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .param p4, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p5, "status"    # I
    .param p6, "isVideo"    # Z

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "sessionId"

    .line 121
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "contact"

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "destination"

    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "name"

    .line 124
    invoke-virtual {p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    .line 125
    invoke-virtual {p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p6, :cond_1

    const-string/jumbo v1, "_data"

    const-string/jumbo v2, ""

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v1, "size"

    .line 137
    invoke-virtual {p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getKbSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "number_of_messages"

    .line 138
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->purge(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "status"

    .line 139
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "_date"

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add new call entry for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p4}, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "_data"

    .line 132
    invoke-virtual {p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "_data"

    .line 130
    invoke-virtual {p4}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 317
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    .line 321
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sessionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 323
    return-void

    .line 318
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/sharing/RichCall;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update status of session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
