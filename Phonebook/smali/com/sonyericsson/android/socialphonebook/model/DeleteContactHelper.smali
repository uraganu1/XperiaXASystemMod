.class public Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
.super Ljava/lang/Object;
.source "DeleteContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;
    }
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x0

.field public static final DISPLAY_NAME:I = 0x1

.field public static final DISPLAY_NAME_ALT:I = 0x2

.field public static final IN_VISIBLE_GROUP:I = 0x4

.field public static final PHOTO_ID:I = 0x3

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final RESULT_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const-class v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v3

    .line 42
    const-string/jumbo v1, "account_type"

    aput-object v1, v0, v4

    .line 43
    const-string/jumbo v1, "data_set"

    aput-object v1, v0, v5

    .line 39
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    .line 49
    const-string/jumbo v1, "display_name_alt"

    aput-object v1, v0, v4

    .line 50
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v5

    .line 51
    const-string/jumbo v1, "in_visible_group"

    aput-object v1, v0, v6

    .line 46
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->RESULT_COLUMNS:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private buildContactsSelection(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "aColumn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "aContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 214
    :cond_0
    const-string/jumbo v5, ""

    return-object v5

    .line 216
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v3, "selection":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v5, " in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 220
    .local v0, "cid":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    .end local v0    # "cid":J
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 226
    :cond_3
    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "selectionStr":Ljava/lang/String;
    sget-boolean v5, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 229
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_4
    return-object v4
.end method

.method private buildUndeleteOperation(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "aOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, "aRawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rcid$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 290
    .local v2, "rcid":Ljava/lang/Long;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 291
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 290
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 295
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v5, "caller_is_syncadapter"

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 298
    .local v1, "opsBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v5, "deleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 299
    const-string/jumbo v5, "deleted != 0"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 300
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-boolean v5, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 302
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "un-delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "opsBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v2    # "rcid":Ljava/lang/Long;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private collectUndeletedContacts(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 22
    .param p2, "isProfileMarked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "undeleteRawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v20, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    const/16 v19, 0x0

    .line 153
    .local v19, "cursor":Landroid/database/Cursor;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v21, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 156
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->RESULT_COLUMNS:[Ljava/lang/String;

    .line 157
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 156
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 159
    .local v19, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 160
    .local v6, "myself":Ljava/lang/String;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    .line 162
    const v3, 0x7f0901f0

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "myself":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v8, 0x0

    .line 165
    .local v8, "photoId":J
    :goto_0
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 166
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    const/4 v10, 0x1

    :goto_1
    move-object v7, v6

    .line 165
    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v6    # "myself":Ljava/lang/String;
    .end local v8    # "photoId":J
    .end local v19    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 171
    if-eqz v19, :cond_1

    .line 172
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 173
    const/16 v19, 0x0

    .line 175
    :cond_1
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v2, " IN ("

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v2, "SELECT DISTINCT "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v2, " FROM "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v2, "raw_contacts LEFT OUTER JOIN accounts ON (raw_contacts.account_id = accounts._id)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v2, " WHERE "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v2, "raw_contacts._id"

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->buildContactsSelection(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v2, " AND "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v2, "account_type!=\'com.sonymobile.rcs\'"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->RESULT_COLUMNS:[Ljava/lang/String;

    .line 194
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 193
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 195
    .restart local v19    # "cursor":Landroid/database/Cursor;
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    :cond_2
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 198
    const/4 v2, 0x1

    .line 197
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 198
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 199
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 200
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/16 v18, 0x1

    .line 197
    :goto_2
    invoke-direct/range {v11 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 205
    .end local v19    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v19, :cond_4

    .line 206
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_4
    return-object v20

    .line 164
    .restart local v6    # "myself":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x3

    .line 163
    :try_start_1
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .restart local v8    # "photoId":J
    goto/16 :goto_0

    .line 166
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 200
    .end local v6    # "myself":Ljava/lang/String;
    .end local v8    # "photoId":J
    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    .line 204
    .end local v19    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 205
    if-eqz v19, :cond_8

    .line 206
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_8
    throw v2
.end method

.method private findSourceId(Landroid/net/Uri;Z)Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;
    .locals 14
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "isRawContactsId"    # Z

    .prologue
    .line 340
    new-instance v13, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;-><init>(ILandroid/net/Uri;)V

    .line 341
    .local v13, "simContact":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;
    if-nez p1, :cond_0

    .line 342
    return-object v13

    .line 345
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->solveId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 346
    .local v8, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    .line 347
    return-object v13

    .line 350
    :cond_1
    move-wide v10, v8

    .line 351
    .local v10, "rawContactId":J
    const/4 v6, 0x0

    .line 353
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 356
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_2

    .line 357
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    const/4 v2, 0x0

    .line 360
    const/4 v4, 0x0

    .line 361
    const/4 v5, 0x0

    .line 357
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 364
    const-string/jumbo v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 365
    .local v12, "rawContactIdx":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 373
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "rawContactIdx":I
    :cond_2
    if-eqz v6, :cond_3

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_3
    :goto_0
    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 381
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 383
    .local v1, "rawContactUri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sourceid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "account_type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 384
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 386
    .restart local v6    # "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    const-string/jumbo v2, "sourceid"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v13, v2}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-set1(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;I)I

    .line 389
    const-string/jumbo v2, "account_type"

    .line 388
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-set0(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :cond_4
    if-eqz v6, :cond_5

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 399
    .end local v1    # "rawContactUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v13

    .line 373
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    if-eqz v6, :cond_7

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_7
    return-object v13

    .line 370
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 371
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error during finding source_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v6, :cond_3

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 372
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    .line 373
    if-eqz v6, :cond_8

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_8
    throw v2

    .line 391
    :catch_1
    move-exception v7

    .line 392
    .restart local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error during finding source_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    if-eqz v6, :cond_5

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 393
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v2

    .line 394
    if-eqz v6, :cond_9

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_9
    throw v2
.end method

.method private getExcludedRawContacts(Ljava/util/List;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p2, "aExcludedAccounts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "aContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v9, "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v10, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "contact_id"

    .line 240
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->buildContactsSelection(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string/jumbo v1, " AND ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 245
    const-string/jumbo v1, "account_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    const-string/jumbo v2, " IN ("

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    const-string/jumbo v2, "SELECT _id FROM "

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string/jumbo v2, "accounts"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    const-string/jumbo v2, " WHERE "

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, "account_type"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, " IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    array-length v1, p2

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 253
    const-string/jumbo v1, "?,"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 256
    const-string/jumbo v1, ")) OR "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .end local v7    # "i":I
    :cond_1
    const-string/jumbo v1, "raw_contact_is_read_only"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v1, "=1"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    sget-boolean v1, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 263
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query for undelete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_2
    const/4 v6, 0x0

    .line 267
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 268
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 269
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v4, p2

    .line 267
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 271
    const-string/jumbo v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 272
    .local v8, "rawContactIdx":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 276
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "rawContactIdx":I
    :catchall_0
    move-exception v1

    .line 277
    if-eqz v6, :cond_3

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_3
    throw v1

    .line 277
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_5

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_5
    return-object v9
.end method

.method public static solveId(Landroid/net/Uri;)J
    .locals 7
    .param p0, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "lastPath":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 311
    .local v2, "id":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 315
    :goto_0
    return-wide v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseLong failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;)V
    .locals 4
    .param p1, "aContactUri"    # Landroid/net/Uri;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->solveId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 66
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->delete(J)Z

    .line 64
    :cond_0
    return-void
.end method

.method public delete(J)Z
    .locals 7
    .param p1, "aContactId"    # J

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getReadOnlyAccountTypes()Ljava/util/ArrayList;

    move-result-object v2

    .line 87
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 89
    .local v3, "readOnlyAccountTypes":[Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    .end local v3    # "readOnlyAccountTypes":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3, v4}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->deleteMultiple(Ljava/util/List;[Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v4, 0x1

    return v4

    .line 90
    .restart local v3    # "readOnlyAccountTypes":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "readOnlyAccountTypes":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .local v3, "readOnlyAccountTypes":[Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v3    # "readOnlyAccountTypes":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delete operation is failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v4, 0x0

    return v4
.end method

.method public delete(Landroid/net/Uri;Z)Z
    .locals 6
    .param p1, "aContactUri"    # Landroid/net/Uri;
    .param p2, "isRawContact"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 71
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {v0, p1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->solveId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 77
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 78
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->delete(J)Z

    move-result v1

    return v1

    .line 80
    :cond_2
    return v1
.end method

.method public deleteAdn(Landroid/net/Uri;Z)Z
    .locals 10
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "isRawContactsId"    # Z

    .prologue
    const/4 v6, 0x0

    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, "result":I
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->findSourceId(Landroid/net/Uri;Z)Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;

    move-result-object v3

    .line 321
    .local v3, "simContact":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-get1(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-get0(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 322
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    .line 324
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-get1(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 323
    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSIMContentsFromId(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 325
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getWhereClauseFromContentValues(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "where":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 328
    :try_start_0
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-get0(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 336
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "where":Ljava/lang/String;
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6

    .line 329
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v5    # "where":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Delete adn contact for index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->-get1(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)I

    move-result v9

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    const-string/jumbo v9, " failed"

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteMultiple(Ljava/util/List;[Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .param p2, "aExcludedAccounts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "aContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "preOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 112
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v5, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, "isProfileMarked":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 121
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    const/4 v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 124
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 126
    .local v0, "deleteOp":Landroid/content/ContentProviderOperation$Builder;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v0    # "deleteOp":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "id":Ljava/lang/Long;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->getExcludedRawContacts(Ljava/util/List;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 133
    .local v6, "undeleteRawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->buildUndeleteOperation(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 136
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 139
    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 140
    :cond_4
    invoke-direct {p0, v6, v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->collectUndeletedContacts(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 146
    .end local v2    # "id$iterator":Ljava/util/Iterator;
    .end local v3    # "isProfileMarked":Z
    .end local v6    # "undeleteRawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    :goto_1
    return-object v5

    .line 142
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 143
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    goto :goto_1
.end method
