.class public Lcom/sonymobile/rcs/utils/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method public static createContact(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 136
    .local v2, "mResolver":Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "account_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "account_name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "raw_contact_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "data1"

    const-string/jumbo v5, "display_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "raw_contact_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "data1"

    const-string/jumbo v5, "data1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "data2"

    const-string/jumbo v5, "data2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v12, 0x0

    .local v12, "rawContactId":J
    const-string/jumbo v3, "com.android.contacts"

    .line 158
    invoke-virtual {v2, v3, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v14

    .local v14, "result":[Landroid/content/ContentProviderResult;
    const/4 v3, 0x1

    .line 160
    aget-object v3, v14, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    const-wide/16 v10, 0x0

    .line 163
    .local v10, "contactId":J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "contact_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 168
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 176
    :goto_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 178
    .local v15, "resultUri":Landroid/net/Uri;
    return-object v15

    .line 169
    .end local v15    # "resultUri":Landroid/net/Uri;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 170
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_1
.end method

.method public static createRcsContactIfNeeded(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/utils/ContactUtils;->getContactId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .local v0, "contactId":I
    const/4 v3, -0x1

    .line 103
    if-eq v0, v3, :cond_0

    .line 117
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 106
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "display_name"

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string/jumbo v3, "data1"

    .line 109
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data2"

    const/4 v4, 0x2

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-static {p0, v2}, Lcom/sonymobile/rcs/utils/ContactUtils;->createContact(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, "newPersonUri":Landroid/net/Uri;
    return-object v1
.end method

.method public static getContactId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 66
    .local v8, "id":I
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "contact_id"

    aput-object v4, v2, v9

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 78
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    return v8

    :cond_1
    const/4 v0, -0x1

    .line 76
    return v0

    .line 79
    :cond_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "databaseNumber":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0
.end method

.method public static isNumberInAddressBook(Ljava/lang/String;)Z
    .locals 14
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 189
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "raw_contact_id"

    aput-object v6, v2, v1

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=? AND PHONE_NUMBERS_EQUAL(data1, ?)"

    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    .line 193
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v4, v1

    const/4 v1, 0x1

    aput-object p0, v4, v1

    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "raw_contact_id"

    .line 198
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 205
    .local v13, "cur":Landroid/database/Cursor;
    if-nez v13, :cond_2

    :cond_0
    const-string/jumbo v9, "mimetype=? AND (NOT PHONE_NUMBERS_EQUAL(data1, ?) AND PHONE_NUMBERS_EQUAL(data1, ?, 1))"

    .local v9, "selectionStrict":Ljava/lang/String;
    const/4 v1, 0x3

    .line 217
    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v10, v1

    const/4 v1, 0x1

    aput-object p0, v10, v1

    const/4 v1, 0x2

    aput-object p0, v10, v1

    .line 220
    .local v10, "selectionArgsStrict":[Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v0

    move-object v8, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 222
    if-nez v13, :cond_3

    .line 232
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 206
    .end local v9    # "selectionStrict":Ljava/lang/String;
    .end local v10    # "selectionArgsStrict":[Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 207
    .local v12, "count":I
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 209
    if-lez v12, :cond_0

    .line 210
    const/4 v1, 0x1

    return v1

    .line 223
    .end local v12    # "count":I
    .restart local v9    # "selectionStrict":Ljava/lang/String;
    .restart local v10    # "selectionArgsStrict":[Ljava/lang/String;
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 224
    .restart local v12    # "count":I
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 226
    if-lez v12, :cond_1

    .line 227
    const/4 v1, 0x1

    return v1
.end method

.method public static updateStatusTable(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presenceStatus"    # I

    .prologue
    .line 385
    new-instance v0, Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/ContactUtils$UpdateStatusTableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method
