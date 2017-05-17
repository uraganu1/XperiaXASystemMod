.class public final Lcom/sonymobile/rcs/provider/eab/ContactsManager;
.super Ljava/lang/Object;
.source "ContactsManager.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/provider/eab/ContactsManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->instance:Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 397
    iput-object p1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    .line 398
    return-void
.end method

.method private cleanEntriesInRichAB()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5258
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "contact_number"

    aput-object v0, v2, v1

    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 5263
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5265
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 5269
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 5285
    if-nez v6, :cond_5

    .line 5289
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 5285
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-nez v6, :cond_3

    .line 5286
    :goto_2
    return-void

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 5270
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5271
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v10, "contact_number=?"

    .local v10, "where":Ljava/lang/String;
    const/4 v0, 0x1

    .line 5273
    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v9, v0

    .line 5276
    .local v9, "selectionArg":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5286
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "selectionArg":[Ljava/lang/String;
    .end local v10    # "where":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 5281
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 5285
    :goto_3
    if-eqz v6, :cond_1

    .line 5286
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5282
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Clean entries has failed"

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 5286
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 5285
    if-nez v6, :cond_7

    .line 5286
    :goto_4
    throw v0

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method private cleanRCSRawContactsInAB()V
    .locals 24

    .prologue
    const/4 v2, 0x2

    .line 5125
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "raw_contact_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data1"

    aput-object v3, v4, v2

    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v5, "mimetype=?"

    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    .line 5131
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.number"

    aput-object v3, v6, v2

    .line 5134
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 5138
    .local v14, "cursor":Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5139
    .local v17, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v14, :cond_2

    .line 5187
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5201
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    .line 5141
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .local v20, "rawContactId":J
    const/4 v2, 0x1

    .line 5142
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 5143
    .local v18, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5140
    .end local v18    # "phoneNumber":Ljava/lang/String;
    .end local v20    # "rawContactId":J
    :cond_2
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5184
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v18    # "phoneNumber":Ljava/lang/String;
    .restart local v20    # "rawContactId":J
    :cond_3
    const/4 v2, 0x2

    .line 5144
    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "raw_contact_id"

    aput-object v3, v9, v2

    .local v9, "projection1":[Ljava/lang/String;
    const-string/jumbo v10, "raw_contact_id=?"

    .local v10, "selection1":Ljava/lang/String;
    const/4 v2, 0x1

    .line 5148
    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 5151
    .local v11, "selectionArgs1":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 5153
    .local v13, "cur2":Landroid/database/Cursor;
    if-nez v13, :cond_4

    .line 5162
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v12

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5166
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "caller_is_syncadapter"

    const-string/jumbo v7, "true"

    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/provider/eab/AggregationData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "rcs_raw_contact_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v12

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5154
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5160
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 5155
    :cond_5
    sget-object v2, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "presence_data_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5190
    .end local v9    # "projection1":[Ljava/lang/String;
    .end local v10    # "selection1":Ljava/lang/String;
    .end local v11    # "selectionArgs1":[Ljava/lang/String;
    .end local v13    # "cur2":Landroid/database/Cursor;
    .end local v18    # "phoneNumber":Ljava/lang/String;
    .end local v20    # "rawContactId":J
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 5199
    :catch_0
    move-exception v16

    .line 5192
    .local v16, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Something went wrong when updating the database strings"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 5199
    .end local v16    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 5196
    .local v15, "e":Landroid/content/OperationApplicationException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Something went wrong when updating the database strings"

    invoke-virtual {v2, v3, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private convertBitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 3925
    .local v1, "iconData":[B
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v3, v4, v5

    .line 3927
    .local v3, "size":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3929
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3936
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3937
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3948
    .end local v1    # "iconData":[B
    :goto_0
    return-object v1

    .line 3933
    .restart local v1    # "iconData":[B
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3934
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, "iconData":[B
    goto :goto_0

    .line 3938
    .local v1, "iconData":[B
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unable to convert bitmap, compression failed"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3946
    :catch_0
    move-exception v0

    .line 3942
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    const/4 v1, 0x0

    .line 3945
    goto :goto_0

    .line 3943
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Unable to convert bitmap"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    monitor-enter v1

    .line 377
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->instance:Lcom/sonymobile/rcs/provider/eab/ContactsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    .line 380
    return-void

    .line 378
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->instance:Lcom/sonymobile/rcs/provider/eab/ContactsManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "rawContactId"    # I
    .param p2, "rcsNumber"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2485
    invoke-direct {p0, p3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getMimeTypeDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2486
    .local v0, "mimeTypeDescription":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2494
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data1"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1

    .line 2488
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data1"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data2"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data3"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 5
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2537
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private getContactInfoFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 4764
    new-instance v5, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v5}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>()V

    .line 4765
    .local v5, "contactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v14, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct {v14}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;-><init>()V

    .line 4766
    .local v14, "presenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v3}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .local v3, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    const/4 v10, 0x0

    .local v10, "photoContent":[B
    const/4 v11, 0x0

    .line 4770
    .local v11, "photoEtag":Ljava/lang/String;
    if-nez p1, :cond_2

    .end local v10    # "photoContent":[B
    .end local v11    # "photoEtag":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    .line 4923
    .local v12, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    if-nez v10, :cond_24

    .line 4929
    .end local v12    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_0
    :goto_1
    invoke-virtual {v14, v12}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    .line 4930
    invoke-virtual {v5, v14}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    .line 4931
    invoke-virtual {v5, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 4933
    return-object v5

    .local v9, "mimeType":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v15, "data1"

    .line 4776
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .local v4, "columnIndex":I
    const/4 v15, -0x1

    .line 4777
    if-ne v4, v15, :cond_4

    .line 4772
    .end local v4    # "columnIndex":I
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_3

    .line 4918
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v15, "mimetype"

    .line 4773
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "mimeType":Ljava/lang/String;
    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    .line 4774
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, "vnd.android.cursor.item/photo"

    .line 4780
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.photo-etag"

    .line 4786
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    .line 4792
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.timestamp"

    .line 4798
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.cs-video"

    .line 4804
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.image-sharing"

    .line 4807
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.video-sharing"

    .line 4810
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-voice-call"

    .line 4813
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-video-call"

    .line 4816
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    .line 4819
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer"

    .line 4822
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.presence-discovery"

    .line 4825
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.social-presence"

    .line 4828
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.geolocation-push"

    .line 4831
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-thumbnail"

    .line 4834
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-http"

    .line 4838
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-sf"

    .line 4841
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_15

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.group-chat-sf"

    .line 4844
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_16

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.call-composer"

    .line 4847
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_17

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.shared-map"

    .line 4850
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_18

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.shared-sketch"

    .line 4853
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.post-call"

    .line 4856
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1a

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.capability.extensions"

    .line 4859
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1b

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    .line 4871
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1d

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    .line 4877
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1e

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.registration-state"

    .line 4890
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_21

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status"

    .line 4896
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status.timestamp"

    .line 4902
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_23

    const-string/jumbo v15, "vnd.android.cursor.item/com.sonymobile.rcs.number"

    .line 4909
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string/jumbo v15, "data1"

    .line 4911
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4912
    if-eq v4, v15, :cond_2

    .line 4913
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setContact(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 4919
    .end local v4    # "columnIndex":I
    .end local v9    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v15

    .line 4918
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    throw v15

    .line 4778
    .restart local v4    # "columnIndex":I
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFavoriteLinkUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    :cond_5
    const-string/jumbo v15, "data15"

    .line 4782
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4783
    if-eq v4, v15, :cond_2

    .line 4784
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .local v10, "photoContent":[B
    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    .end local v10    # "photoContent":[B
    :cond_6
    const-string/jumbo v15, "data2"

    .line 4788
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4789
    if-eq v4, v15, :cond_2

    .line 4790
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "photoEtag":Ljava/lang/String;
    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    .end local v11    # "photoEtag":Ljava/lang/String;
    :cond_7
    const-string/jumbo v15, "data2"

    .line 4794
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4795
    if-eq v4, v15, :cond_2

    .line 4796
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setTimestamp(J)V

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    :cond_8
    const-string/jumbo v15, "data2"

    .line 4800
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4801
    if-eq v4, v15, :cond_2

    .line 4802
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setTimestamp(J)V

    goto/16 :goto_2

    .line 4806
    .end local v4    # "columnIndex":I
    :cond_9
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCsVideoSupport(Z)V

    goto/16 :goto_2

    .line 4809
    :cond_a
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    goto/16 :goto_2

    .line 4812
    :cond_b
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    goto/16 :goto_2

    .line 4815
    :cond_c
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVoiceCallSupport(Z)V

    goto/16 :goto_2

    .line 4818
    :cond_d
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVideoCallSupport(Z)V

    goto/16 :goto_2

    .line 4821
    :cond_e
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    goto/16 :goto_2

    .line 4824
    :cond_f
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    goto/16 :goto_2

    .line 4827
    :cond_10
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPresenceDiscoverySupport(Z)V

    goto/16 :goto_2

    .line 4830
    :cond_11
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSocialPresenceSupport(Z)V

    goto/16 :goto_2

    .line 4833
    :cond_12
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGeolocationPushSupport(Z)V

    goto/16 :goto_2

    .line 4837
    :cond_13
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferThumbnailSupport(Z)V

    goto/16 :goto_2

    .line 4840
    :cond_14
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferHttpSupport(Z)V

    goto/16 :goto_2

    .line 4843
    :cond_15
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferStoreForwardSupport(Z)V

    goto/16 :goto_2

    .line 4846
    :cond_16
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGroupChatStoreForwardSupport(Z)V

    goto/16 :goto_2

    .line 4849
    :cond_17
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCallComposerSupport(Z)V

    goto/16 :goto_2

    .line 4852
    :cond_18
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedMapSupport(Z)V

    goto/16 :goto_2

    .line 4855
    :cond_19
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedSketchSupport(Z)V

    goto/16 :goto_2

    .line 4858
    :cond_1a
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPostCallSupport(Z)V

    goto/16 :goto_2

    :cond_1b
    const-string/jumbo v15, "data2"

    .line 4861
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4862
    if-eq v4, v15, :cond_2

    .line 4863
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "extensions":Ljava/lang/String;
    const-string/jumbo v15, ";"

    .line 4864
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "extensionList":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 4865
    .local v8, "i":I
    :goto_3
    array-length v15, v6

    if-ge v8, v15, :cond_2

    .line 4866
    aget-object v15, v6, v8

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_1c

    .line 4865
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4867
    :cond_1c
    aget-object v15, v6, v8

    invoke-virtual {v3, v15}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->addSupportedExtension(Ljava/lang/String;)V

    goto :goto_4

    .end local v4    # "columnIndex":I
    .end local v6    # "extensionList":[Ljava/lang/String;
    .end local v7    # "extensions":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_1d
    const-string/jumbo v15, "data2"

    .line 4873
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4874
    if-eq v4, v15, :cond_2

    .line 4875
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFreetext(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    :cond_1e
    const-string/jumbo v15, "data2"

    .line 4879
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4880
    if-eq v4, v15, :cond_2

    .line 4881
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, "presence":I
    const/4 v15, 0x5

    .line 4882
    if-eq v13, v15, :cond_1f

    .line 4884
    if-eqz v13, :cond_20

    const-string/jumbo v15, "unknown"

    .line 4887
    invoke-virtual {v14, v15}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPresenceStatus(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    const-string/jumbo v15, "open"

    .line 4883
    invoke-virtual {v14, v15}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPresenceStatus(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    const-string/jumbo v15, "closed"

    .line 4885
    invoke-virtual {v14, v15}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPresenceStatus(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    .end local v13    # "presence":I
    :cond_21
    const-string/jumbo v15, "data2"

    .line 4892
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4893
    if-eq v4, v15, :cond_2

    .line 4894
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRegistrationState(I)V

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    :cond_22
    const-string/jumbo v15, "data2"

    .line 4898
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4899
    if-eq v4, v15, :cond_2

    .line 4900
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    :cond_23
    const-string/jumbo v15, "data2"

    .line 4905
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "columnIndex":I
    const/4 v15, -0x1

    .line 4906
    if-eq v4, v15, :cond_2

    .line 4907
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatusTimestamp(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .end local v4    # "columnIndex":I
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local v12    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_24
    const/4 v15, 0x0

    .line 4924
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4925
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 4926
    new-instance v12, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .end local v12    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v12, v10, v15, v0, v11}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;-><init>([BIILjava/lang/String;)V

    .local v12, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->instance:Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    return-object v0
.end method

.method private getMimeTypeDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer"

    .line 3154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3156
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-offline"

    .line 3154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    .line 3157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3159
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session-offline"

    .line 3157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.cs-video"

    .line 3160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-voice-call"

    .line 3162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-video-call"

    .line 3164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.capability.support.extension"

    .line 3166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 3169
    return-object v0

    .line 3161
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3163
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3165
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3167
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresenceStatus(I)I
    .locals 2
    .param p1, "registrationStatus"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "availability":I
    const/4 v1, 0x1

    .line 5400
    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    .line 5402
    if-eq p1, v1, :cond_1

    .line 5405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    .line 5401
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5403
    goto :goto_0
.end method

.method private getProfileRowId(Ljava/lang/String;)I
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 568
    .local v8, "rowId":I
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_number = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 571
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 583
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    :cond_0
    :goto_1
    return v8

    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "cur":Landroid/database/Cursor;
    :cond_1
    const/4 v0, -0x1

    .line 572
    return v0

    :cond_2
    const-string/jumbo v0, "_id"

    .line 575
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 582
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 579
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Internal exception"

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getRawContactDataCursor(J)Landroid/database/Cursor;
    .locals 11
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x6

    .line 4943
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v5

    const-string/jumbo v0, "mimetype"

    aput-object v0, v2, v6

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v7

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v8

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v9

    const/4 v0, 0x5

    const-string/jumbo v1, "data15"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "(raw_contact_id =?) AND (mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? OR mimetype=?)"

    .local v3, "selection":Ljava/lang/String;
    const/16 v0, 0x1d

    .line 4958
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    aput-object v0, v4, v6

    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    aput-object v0, v4, v7

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.photo-etag"

    aput-object v0, v4, v8

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status"

    aput-object v0, v4, v9

    const/4 v0, 0x5

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status.timestamp"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.registration-state"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.number"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.timestamp"

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.cs-video"

    aput-object v1, v4, v0

    const/16 v0, 0xd

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.image-sharing"

    aput-object v1, v4, v0

    const/16 v0, 0xe

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.video-sharing"

    aput-object v1, v4, v0

    const/16 v0, 0xf

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-voice-call"

    aput-object v1, v4, v0

    const/16 v0, 0x10

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-video-call"

    aput-object v1, v4, v0

    const/16 v0, 0x11

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    aput-object v1, v4, v0

    const/16 v0, 0x12

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer"

    aput-object v1, v4, v0

    const/16 v0, 0x13

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.presence-discovery"

    aput-object v1, v4, v0

    const/16 v0, 0x14

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.social-presence"

    aput-object v1, v4, v0

    const/16 v0, 0x15

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.geolocation-push"

    aput-object v1, v4, v0

    const/16 v0, 0x16

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-thumbnail"

    aput-object v1, v4, v0

    const/16 v0, 0x17

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-http"

    aput-object v1, v4, v0

    const/16 v0, 0x18

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-sf"

    aput-object v1, v4, v0

    const/16 v0, 0x19

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.group-chat-sf"

    aput-object v1, v4, v0

    const/16 v0, 0x1a

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.extensions"

    aput-object v1, v4, v0

    const/16 v0, 0x1b

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session-offline"

    aput-object v1, v4, v0

    const/16 v0, 0x1c

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-offline"

    aput-object v1, v4, v0

    .line 4973
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getRawContactIdForMe()J
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 4465
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "account_type"

    aput-object v0, v2, v1

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v7

    const-string/jumbo v0, "sourceid"

    aput-object v0, v2, v10

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "account_type=? AND sourceid=?"

    .line 4469
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v0, "com.sonymobile.rcs"

    aput-object v0, v4, v1

    const-string/jumbo v0, "myself"

    aput-object v0, v4, v7

    .line 4473
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4475
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 4478
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4483
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4484
    .local v8, "rawContactId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4485
    return-wide v8

    .line 4476
    .end local v8    # "rawContactId":J
    :cond_0
    return-wide v12

    .line 4479
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4480
    return-wide v12
.end method

.method private getRcsRawContactIdFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 4102
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4104
    .local v6, "contactsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-array v2, v13, [Ljava/lang/String;

    const-string/jumbo v0, "raw_contact_id"

    aput-object v0, v2, v12

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v1

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=? AND PHONE_NUMBERS_EQUAL(data1, ?)"

    .line 4108
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.number"

    aput-object v0, v4, v12

    aput-object p1, v4, v1

    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "raw_contact_id"

    .line 4113
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4115
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 4128
    :goto_0
    return-object v6

    .line 4117
    :cond_0
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, "rcsRawContactId":J
    const-string/jumbo v0, "data1"

    .line 4118
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4119
    .local v9, "phone":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4120
    .local v8, "interPhone":Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4116
    .end local v8    # "interPhone":Ljava/lang/String;
    .end local v9    # "phone":Ljava/lang/String;
    .end local v10    # "rcsRawContactId":J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4125
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4121
    .restart local v8    # "interPhone":Ljava/lang/String;
    .restart local v9    # "phone":Ljava/lang/String;
    .restart local v10    # "rcsRawContactId":J
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getRcsRawContactIdsFromContact(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "myself"

    .line 4289
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4294
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsRawContactIdFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4291
    .local v0, "rawContactId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdForMe()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    return-object v0
.end method

.method private insertMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 5
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2510
    invoke-direct {p0, p4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getMimeTypeDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    .local v0, "mimeTypeDescription":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2520
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data1"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1

    .line 2513
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data1"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data2"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data3"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private isNewRCSContactNeeded(Ljava/lang/String;J)Z
    .locals 18
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "rawContactId"    # J

    .prologue
    .line 5520
    const/4 v13, 0x1

    .line 5521
    .local v13, "result":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5522
    .local v9, "contactNameLst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    .local v10, "countryCode":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5524
    .local v12, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, "mimetype=? AND PHONE_NUMBERS_EQUAL(data1, ?)"

    .line 5528
    .local v5, "selection":Ljava/lang/String;
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object p1, v6, v2

    .line 5535
    .local v6, "selectonArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v16, "raw_contact_id"

    aput-object v16, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v16, "display_name"

    aput-object v16, v4, v7

    const-string/jumbo v7, "raw_contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5539
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 5558
    .end local v12    # "name":Ljava/lang/String;
    :goto_2
    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5561
    :goto_3
    return v13

    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectonArgs":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "mimetype=? AND PHONE_NUMBERS_EQUAL(data1, ?) OR PHONE_NUMBERS_EQUAL(data1, ?)"

    goto :goto_0

    .restart local v5    # "selection":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x3

    .line 5528
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object p1, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    goto :goto_1

    .restart local v6    # "selectonArgs":[Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-wide/16 v14, -0x1

    .local v14, "rawCntctId":J
    const/4 v8, 0x0

    .line 5542
    .end local v12    # "name":Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5555
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 5543
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x1

    .line 5544
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5545
    .local v8, "cntctName":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 5546
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 5547
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRawContactRcs(J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5550
    :goto_5
    cmp-long v2, p2, v14

    if-nez v2, :cond_3

    .line 5551
    move-object v12, v8

    .local v12, "name":Ljava/lang/String;
    goto :goto_4

    .line 5548
    .end local v12    # "name":Ljava/lang/String;
    :cond_5
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5559
    .end local v8    # "cntctName":Ljava/lang/String;
    .end local v14    # "rawCntctId":J
    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private isNonRcsAssociated(J)Z
    .locals 9
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5416
    const/4 v7, 0x0

    .line 5417
    .local v7, "result":Z
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(account_type IS NOT NULL AND account_type =\'com.sonyericsson.localcontacts\' OR account_type =\'com.sonyericsson.sdncontacts\' OR account_type =\'com.android.exchange\' OR account_type =\'com.sonyericsson.adncontacts\' OR account_type =\'com.google\') AND _id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5431
    .local v6, "rawCur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 5437
    :goto_0
    return v7

    .line 5432
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 5435
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5433
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private isRawContactRcs(J)Z
    .locals 9
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4236
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v7

    .local v2, "rawProjection":[Ljava/lang/String;
    const-string/jumbo v3, "account_type=? AND _id=?"

    .local v3, "rawSelection":Ljava/lang/String;
    const/4 v0, 0x2

    .line 4240
    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "com.sonymobile.rcs"

    aput-object v0, v4, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 4243
    .local v4, "rawSelectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4245
    .local v6, "rawCur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 4252
    :goto_0
    return v7

    .line 4246
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4247
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4248
    return v8
.end method

.method private modifyCapabilityTimestampForContact(JLjava/lang/String;J)Landroid/content/ContentProviderOperation;
    .locals 5
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 3543
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "vnd.android.cursor.item/com.sonymobile.rcs.capability.timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "data2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private modifyContactRegistrationState(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 17
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "newRegistrationState"    # I
    .param p5, "oldRegistrationState"    # I
    .param p6, "newFreeText"    # Ljava/lang/String;
    .param p7, "oldFreeText"    # Ljava/lang/String;
    .param p8, "availability"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2628
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2629
    .local v11, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v12, 0x1

    .line 2630
    .local v12, "registrationChanged":Z
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 2631
    :cond_0
    const/4 v12, 0x0

    .line 2634
    :goto_0
    if-nez v12, :cond_3

    .line 2647
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v8

    .local v8, "clientMode":I
    const/4 v2, 0x1

    .line 2648
    if-eq v2, v8, :cond_4

    const/4 v10, 0x0

    .line 2650
    .local v10, "isIntegratedClient":Z
    :goto_2
    if-nez v10, :cond_5

    :cond_1
    const/4 v2, 0x2

    .line 2652
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "raw_contact_id"

    aput-object v3, v4, v2

    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v5, "raw_contact_id=?"

    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    .line 2656
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2659
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2662
    .local v9, "cur":Landroid/database/Cursor;
    if-nez v9, :cond_6

    .line 2699
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "cur":Landroid/database/Cursor;
    :goto_3
    return-object v11

    .line 2630
    .end local v8    # "clientMode":I
    .end local v10    # "isIntegratedClient":Z
    :cond_2
    if-eqz p4, :cond_0

    goto :goto_0

    .line 2636
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "vnd.android.cursor.item/com.sonymobile.rcs.registration-state"

    aput-object v14, v7, v13

    const/4 v13, 0x2

    aput-object p3, v7, v13

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v8    # "clientMode":I
    :cond_4
    const/4 v10, 0x1

    .line 2648
    goto :goto_2

    .line 2650
    .restart local v10    # "isIntegratedClient":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 2664
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_6
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 2695
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2665
    :cond_7
    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "presence_data_id"

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "status"

    const-string/jumbo v7, " "

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v7, "status_res_package"

    if-nez v10, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "status_label"

    const v7, 0x7f05002c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "mode"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "protocol"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "custom_protocol"

    const-string/jumbo v7, " "

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "status_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2696
    :catchall_0
    move-exception v2

    .line 2695
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2665
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, " "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private modifyContactTypeForContact(JLjava/lang/String;II)Ljava/util/ArrayList;
    .locals 7
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "newContactType"    # I
    .param p5, "oldContactType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2362
    if-eq p4, p5, :cond_2

    .line 2368
    invoke-virtual {p0, p3, p4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyRcsContactInProvider(Ljava/lang/String;I)V

    .line 2370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    packed-switch p4, :pswitch_data_0

    .line 2419
    if-ne p5, v6, :cond_8

    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.not-rcs-contact"

    .line 2421
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-capable-contact"

    .line 2433
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->insertMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2439
    :goto_1
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "raw_contact_id=? AND mimetype=?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data2"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    return-object v0

    .line 2364
    .end local v0    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 2375
    .restart local v0    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :pswitch_0
    if-eqz p5, :cond_3

    .line 2383
    if-eq p5, v3, :cond_4

    :goto_2
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.not-rcs-contact"

    .line 2393
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->insertMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-capable-contact"

    .line 2377
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-contact"

    .line 2385
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2398
    :pswitch_1
    if-eqz p5, :cond_6

    .line 2403
    if-ne p5, v6, :cond_7

    :cond_5
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.not-rcs-contact"

    .line 2406
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-contact"

    .line 2414
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->insertMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-capable-contact"

    .line 2400
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2403
    :cond_7
    if-eq p5, v1, :cond_5

    goto :goto_3

    .line 2419
    :cond_8
    if-eq p5, v1, :cond_0

    .line 2427
    if-ne p5, v3, :cond_1

    const-string/jumbo v1, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-contact"

    .line 2429
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private modifyExtensionsCapabilityForContact(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 17
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2715
    .local p4, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "oldExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2718
    .local v15, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2723
    :cond_0
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .local v11, "extension":Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 2724
    .local v14, "j":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v14, v3, :cond_3

    .line 2729
    const/4 v9, 0x0

    .line 2730
    .local v9, "oldHasCommonExtensions":Z
    const/4 v8, 0x0

    .line 2733
    .local v8, "newHasCommonExtensions":Z
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSupportedRcsExtensions()Ljava/lang/String;

    move-result-object v12

    .line 2734
    .local v12, "exts":Ljava/lang/String;
    if-nez v12, :cond_4

    :cond_1
    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.capability.support.extension"

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    .line 2748
    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.capability.extensions"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "data2"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2762
    return-object v15

    .line 2718
    .end local v8    # "newHasCommonExtensions":Z
    .end local v9    # "oldHasCommonExtensions":Z
    .end local v11    # "extension":Ljava/lang/StringBuffer;
    .end local v12    # "exts":Ljava/lang/String;
    .end local v14    # "j":I
    :cond_2
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2720
    return-object v15

    .line 2725
    .restart local v11    # "extension":Ljava/lang/StringBuffer;
    .restart local v14    # "j":I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2724
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2734
    .restart local v8    # "newHasCommonExtensions":Z
    .restart local v9    # "oldHasCommonExtensions":Z
    .restart local v12    # "exts":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, ","

    .line 2735
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "ext":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 2736
    .local v13, "i":I
    :goto_1
    array-length v3, v10

    if-ge v13, v3, :cond_1

    .line 2737
    aget-object v2, v10, v13

    .line 2738
    .local v2, "capability":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2741
    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2736
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2739
    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    .line 2742
    :cond_6
    const/4 v9, 0x1

    goto :goto_3
.end method

.method private modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "newState"    # Z
    .param p6, "oldState"    # Z

    .prologue
    .line 2462
    if-eq p5, p6, :cond_0

    const/4 v0, 0x1

    .line 2466
    if-eq p5, v0, :cond_1

    .line 2471
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2464
    return-object v0

    .line 2468
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->insertMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private modifyPresenceForContact(JLjava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/util/ArrayList;
    .locals 33
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;
    .param p4, "newPresenceInfo"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .param p5, "oldPresenceInfo"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;",
            "Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2776
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 2778
    .local v28, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p4, :cond_2

    .line 2916
    :cond_0
    if-nez p4, :cond_16

    .line 3023
    if-nez p5, :cond_21

    .line 3116
    :cond_1
    :goto_0
    return-object v28

    .line 2778
    :cond_2
    if-eqz p5, :cond_0

    .line 2780
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOffline()Z

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOffline()Z

    move-result v3

    if-eq v2, v3, :cond_7

    :cond_3
    const/4 v7, 0x1

    .line 2783
    .local v7, "availability":I
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOnline()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2785
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOffline()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2790
    :goto_1
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    .end local v7    # "availability":I
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->stringsHaveChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2812
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->stringsHaveChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2873
    :goto_4
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v25

    .line 2874
    .local v25, "oldPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v23

    .line 2876
    .local v23, "newPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    const/16 v19, 0x0

    .local v19, "haveSameEtags":Z
    const/16 v26, 0x0

    .local v26, "oldPhotoIconEtag":Ljava/lang/String;
    const/16 v24, 0x0

    .line 2879
    .local v24, "newPhotoIconEtag":Ljava/lang/String;
    if-nez v25, :cond_10

    .line 2882
    .end local v26    # "oldPhotoIconEtag":Ljava/lang/String;
    :goto_5
    if-nez v23, :cond_11

    .line 2885
    .end local v24    # "newPhotoIconEtag":Ljava/lang/String;
    :goto_6
    if-eqz v26, :cond_12

    .line 2887
    :cond_4
    if-nez v26, :cond_13

    .line 2891
    .end local v19    # "haveSameEtags":Z
    :cond_5
    :goto_7
    if-eqz v19, :cond_14

    .line 2904
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2906
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2780
    .end local v23    # "newPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .end local v25    # "oldPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOnline()Z

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOnline()Z

    move-result v3

    if-ne v2, v3, :cond_3

    goto/16 :goto_2

    .restart local v7    # "availability":I
    :cond_8
    const/4 v7, 0x5

    .line 2784
    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x0

    .line 2786
    goto/16 :goto_1

    .line 2803
    .end local v7    # "availability":I
    :cond_a
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2815
    :cond_b
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2825
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .local v31, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "raw_contact_id"

    .line 2826
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    .line 2827
    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data1"

    .line 2828
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data2"

    const/4 v3, 0x1

    .line 2829
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x1

    .line 2830
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_super_primary"

    const/4 v3, 0x1

    .line 2831
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v20, -0x1

    .line 2835
    .local v20, "currentNativeWebLinkDataId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "raw_contact_id=? AND mimetype=? AND data2=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2846
    .local v18, "cur":Landroid/database/Cursor;
    if-nez v18, :cond_c

    .line 2853
    :goto_8
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2857
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    .line 2865
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2847
    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2850
    :goto_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    .line 2848
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    goto :goto_9

    .line 2855
    :cond_e
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2859
    :cond_f
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2880
    .end local v18    # "cur":Landroid/database/Cursor;
    .end local v20    # "currentNativeWebLinkDataId":J
    .end local v31    # "values":Landroid/content/ContentValues;
    .restart local v19    # "haveSameEtags":Z
    .restart local v23    # "newPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .restart local v24    # "newPhotoIconEtag":Ljava/lang/String;
    .restart local v25    # "oldPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .restart local v26    # "oldPhotoIconEtag":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v26

    .local v26, "oldPhotoIconEtag":Ljava/lang/String;
    goto/16 :goto_5

    .line 2883
    .end local v26    # "oldPhotoIconEtag":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v24

    .local v24, "newPhotoIconEtag":Ljava/lang/String;
    goto/16 :goto_6

    .line 2885
    .end local v24    # "newPhotoIconEtag":Ljava/lang/String;
    :cond_12
    if-nez v24, :cond_4

    .line 2886
    const/16 v19, 0x1

    goto/16 :goto_7

    .line 2887
    :cond_13
    if-eqz v24, :cond_5

    .line 2888
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    .local v19, "haveSameEtags":Z
    goto/16 :goto_7

    .line 2894
    .end local v19    # "haveSameEtags":Z
    :cond_14
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactPhoto(Ljava/lang/Long;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;Z)Ljava/util/List;

    move-result-object v29

    .local v29, "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 2896
    .local v22, "i":I
    :goto_a
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_6

    .line 2897
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentProviderOperation;

    .line 2898
    .local v27, "op":Landroid/content/ContentProviderOperation;
    if-nez v27, :cond_15

    .line 2896
    :goto_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 2899
    :cond_15
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .end local v22    # "i":I
    .end local v23    # "newPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .end local v25    # "oldPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .end local v27    # "op":Landroid/content/ContentProviderOperation;
    .end local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_16
    const/4 v7, 0x0

    .line 2920
    .restart local v7    # "availability":I
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOnline()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2922
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOffline()Z

    move-result v2

    if-nez v2, :cond_18

    :goto_c
    const/4 v8, -0x1

    .line 2927
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getPresenceStatus(I)I

    move-result v11

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyContactRegistrationState(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v30

    .local v30, "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 2930
    .restart local v22    # "i":I
    :goto_d
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_19

    .line 2938
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPresenceStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2945
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2951
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2957
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .restart local v31    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "raw_contact_id"

    .line 2958
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    .line 2959
    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data1"

    .line 2960
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data2"

    const/4 v3, 0x1

    .line 2961
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x1

    .line 2962
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_super_primary"

    const/4 v3, 0x1

    .line 2963
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v20, -0x1

    .line 2967
    .restart local v20    # "currentNativeWebLinkDataId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v10, v2

    const-string/jumbo v11, "raw_contact_id=? AND mimetype=? AND data2=?"

    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    aput-object v3, v12, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2978
    .restart local v18    # "cur":Landroid/database/Cursor;
    if-nez v18, :cond_1b

    :goto_e
    const-wide/16 v2, -0x1

    .line 2985
    cmp-long v2, v20, v2

    if-nez v2, :cond_1d

    .line 2987
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    :goto_f
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactPhoto(Ljava/lang/Long;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;Z)Ljava/util/List;

    move-result-object v29

    .restart local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 3006
    :goto_10
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_1f

    .line 3014
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v18    # "cur":Landroid/database/Cursor;
    .end local v20    # "currentNativeWebLinkDataId":J
    .end local v22    # "i":I
    .end local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v30    # "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v31    # "values":Landroid/content/ContentValues;
    :cond_17
    const/4 v7, 0x1

    .line 2921
    goto/16 :goto_c

    :cond_18
    const/4 v7, 0x2

    .line 2923
    goto/16 :goto_c

    .line 2931
    .restart local v22    # "i":I
    .restart local v30    # "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_19
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentProviderOperation;

    .line 2932
    .restart local v27    # "op":Landroid/content/ContentProviderOperation;
    if-nez v27, :cond_1a

    .line 2930
    :goto_11
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_d

    .line 2933
    :cond_1a
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2979
    .end local v27    # "op":Landroid/content/ContentProviderOperation;
    .restart local v18    # "cur":Landroid/database/Cursor;
    .restart local v20    # "currentNativeWebLinkDataId":J
    .restart local v31    # "values":Landroid/content/ContentValues;
    :cond_1b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2982
    :goto_12
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    :cond_1c
    const/4 v2, 0x0

    .line 2980
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    goto :goto_12

    .line 2989
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 2997
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 2991
    :cond_1e
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 3007
    .restart local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_1f
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentProviderOperation;

    .line 3008
    .restart local v27    # "op":Landroid/content/ContentProviderOperation;
    if-nez v27, :cond_20

    .line 3006
    :goto_13
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 3009
    :cond_20
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .end local v7    # "availability":I
    .end local v18    # "cur":Landroid/database/Cursor;
    .end local v20    # "currentNativeWebLinkDataId":J
    .end local v22    # "i":I
    .end local v27    # "op":Landroid/content/ContentProviderOperation;
    .end local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v30    # "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v31    # "values":Landroid/content/ContentValues;
    :cond_21
    const/4 v13, 0x2

    const/4 v14, -0x1

    const-string/jumbo v15, ""

    .line 3029
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    invoke-direct/range {v9 .. v17}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyContactRegistrationState(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v30

    .restart local v30    # "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 3032
    .restart local v22    # "i":I
    :goto_14
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_22

    .line 3040
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3051
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3060
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v20, -0x1

    .line 3072
    .restart local v20    # "currentNativeWebLinkDataId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v10, v2

    const-string/jumbo v11, "raw_contact_id=? AND mimetype=? AND data2=?"

    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    aput-object v3, v12, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 3083
    .restart local v18    # "cur":Landroid/database/Cursor;
    if-nez v18, :cond_24

    .line 3090
    :goto_15
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactPhoto(Ljava/lang/Long;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;Z)Ljava/util/List;

    move-result-object v29

    .restart local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 3097
    :goto_16
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_26

    .line 3105
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3033
    .end local v18    # "cur":Landroid/database/Cursor;
    .end local v20    # "currentNativeWebLinkDataId":J
    .end local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_22
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentProviderOperation;

    .line 3034
    .restart local v27    # "op":Landroid/content/ContentProviderOperation;
    if-nez v27, :cond_23

    .line 3032
    :goto_17
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 3035
    :cond_23
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3084
    .end local v27    # "op":Landroid/content/ContentProviderOperation;
    .restart local v18    # "cur":Landroid/database/Cursor;
    .restart local v20    # "currentNativeWebLinkDataId":J
    :cond_24
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3087
    :goto_18
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_15

    :cond_25
    const/4 v2, 0x0

    .line 3085
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    goto :goto_18

    .line 3098
    .restart local v29    # "photoOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_26
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentProviderOperation;

    .line 3099
    .restart local v27    # "op":Landroid/content/ContentProviderOperation;
    if-nez v27, :cond_27

    .line 3097
    :goto_19
    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    .line 3100
    :cond_27
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private setContactPhoto(Ljava/lang/Long;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;Z)Ljava/util/List;
    .locals 23
    .param p1, "rawContactId"    # Ljava/lang/Long;
    .param p2, "photoIcon"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .param p3, "makeSuperPrimary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4309
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x1

    .line 4312
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v5, "raw_contact_id=? AND mimetype=?"

    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    .line 4316
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    aput-object v3, v6, v2

    .local v6, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v7, "_id DESC"

    .line 4321
    .local v7, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4323
    .local v14, "cur":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    const/16 v19, 0x0

    .line 4328
    .local v19, "iconData":[B
    if-nez p2, :cond_3

    .line 4333
    .end local v19    # "iconData":[B
    :goto_0
    if-eqz v19, :cond_4

    :cond_0
    :goto_1
    const-wide/16 v16, -0x1

    .line 4341
    .local v16, "dataId":J
    if-eqz v19, :cond_5

    .line 4353
    :try_start_0
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "raw_contact_id"

    .line 4354
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    .line 4355
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data15"

    .line 4356
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x1

    .line 4357
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4358
    if-nez p3, :cond_6

    .line 4361
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4370
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4374
    :goto_3
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v2, "raw_contact_id"

    .line 4377
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.photo-etag"

    .line 4378
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    .line 4380
    .local v18, "etag":Ljava/lang/String;
    if-nez p2, :cond_8

    .end local v18    # "etag":Ljava/lang/String;
    :goto_4
    const-string/jumbo v2, "data2"

    .line 4383
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 4385
    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "raw_contact_id"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "mimetype"

    aput-object v3, v10, v2

    .local v10, "projection2":[Ljava/lang/String;
    const-string/jumbo v11, "raw_contact_id=? AND mimetype=?"

    .local v11, "selection2":Ljava/lang/String;
    const/4 v2, 0x2

    .line 4389
    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "vnd.android.cursor.item/com.sonymobile.rcs.photo-etag"

    aput-object v3, v12, v2

    .line 4393
    .local v12, "selectionArgs2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 4395
    .local v15, "cur2":Landroid/database/Cursor;
    if-nez v15, :cond_9

    .line 4413
    .end local v10    # "projection2":[Ljava/lang/String;
    .end local v11    # "selection2":Ljava/lang/String;
    .end local v12    # "selectionArgs2":[Ljava/lang/String;
    .end local v15    # "cur2":Landroid/database/Cursor;
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4415
    return-object v20

    .line 4324
    .end local v16    # "dataId":J
    :cond_2
    return-object v20

    .line 4329
    .restart local v19    # "iconData":[B
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getContent()[B

    move-result-object v19

    .local v19, "iconData":[B
    goto/16 :goto_0

    .line 4333
    .end local v19    # "iconData":[B
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdForMe()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 4334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020006

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 4336
    .local v21, "rcsAvatar":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->convertBitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v19

    .restart local v19    # "iconData":[B
    goto/16 :goto_1

    .line 4344
    .end local v19    # "iconData":[B
    .end local v21    # "rcsAvatar":Landroid/graphics/Bitmap;
    .restart local v16    # "dataId":J
    :cond_5
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "_id"

    .line 4345
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4347
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 4414
    :catchall_0
    move-exception v2

    .line 4413
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_2
    const-string/jumbo v2, "is_super_primary"

    const/4 v3, 0x1

    .line 4359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v2, "_id"

    .line 4363
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4364
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4381
    .restart local v18    # "etag":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v18

    .local v18, "etag":Ljava/lang/String;
    goto/16 :goto_4

    .line 4396
    .end local v18    # "etag":Ljava/lang/String;
    .restart local v10    # "projection2":[Ljava/lang/String;
    .restart local v11    # "selection2":Ljava/lang/String;
    .restart local v12    # "selectionArgs2":[Ljava/lang/String;
    .restart local v15    # "cur2":Landroid/database/Cursor;
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4406
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4409
    :goto_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :cond_a
    const/4 v2, 0x0

    .line 4397
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string/jumbo v2, "_id"

    .line 4399
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4400
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method private stringsHaveChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "newString"    # Ljava/lang/String;
    .param p2, "oldString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3127
    if-eqz p1, :cond_0

    .line 3136
    if-eqz p2, :cond_2

    .line 3141
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return v0

    .line 3128
    :cond_0
    if-eqz p2, :cond_1

    .line 3133
    return v1

    .line 3130
    :cond_1
    return v0

    .line 3138
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 3141
    goto :goto_0
.end method

.method private updateunreadmessagecount(JLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 7
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;

    .prologue
    .line 1180
    invoke-virtual {p0, p3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getNumberOfUnreadChatMessages(Ljava/lang/String;)I

    move-result v0

    .line 1182
    .local v0, "unread":I
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "data4"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blockContact(Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 1916
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1921
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v2

    .line 1922
    .local v2, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .local v1, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    const/4 v3, 0x4

    .line 1923
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1924
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    return-void

    .line 1917
    .end local v1    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v2    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Block contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1930
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1929
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1927
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Internal exception"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public cleanRCSEntries()V
    .locals 0

    .prologue
    .line 5116
    invoke-direct {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->cleanRCSRawContactsInAB()V

    .line 5117
    invoke-direct {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->cleanEntriesInRichAB()V

    .line 5118
    return-void
.end method

.method public createMyContact()J
    .locals 22

    .prologue
    .line 3958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 3959
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .local v2, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v3, "com.sonymobile.rcs"

    .line 3965
    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 3973
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdForMe()J

    move-result-wide v4

    .local v4, "imsRawContactId":J
    const-wide/16 v6, -0x1

    .line 3975
    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 3976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4092
    :goto_0
    return-wide v4

    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v4    # "imsRawContactId":J
    :cond_0
    const-wide/16 v6, -0x1

    .line 3960
    return-wide v6

    .line 3966
    .restart local v2    # "am":Landroid/accounts/AccountManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3969
    :goto_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "No RCS account found"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3967
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Could not create \"Me\" contact, no RCS account found"

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3977
    .restart local v4    # "imsRawContactId":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "\"Me\" contact already exists, no need to recreate"

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 3980
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3984
    :goto_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3987
    .local v17, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3988
    .local v18, "rawContactRefIms":I
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "account_type"

    const-string/jumbo v7, "com.sonymobile.rcs"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "account_name"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonymobile/rcs/service/LauncherUtils;->getAccountUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "sourceid"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "aggregation_mode"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3997
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    const v8, 0x7f05000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4005
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data2"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4012
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status.timestamp"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4019
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.my-profile"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4025
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4032
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data2"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4045
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.capability.timestamp"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data1"

    const-string/jumbo v7, "myself"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020006

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 4054
    .local v19, "rcsAvatar":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->convertBitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v15

    .line 4055
    .local v15, "iconData":[B
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "data15"

    invoke-virtual {v3, v6, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v6, "is_primary"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4062
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v21

    .line 4063
    .local v21, "results":[Landroid/content/ContentProviderResult;
    aget-object v3, v21, v18

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 4070
    .end local v21    # "results":[Landroid/content/ContentProviderResult;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v6, "myself"

    const/4 v7, 0x1

    const/4 v8, -0x1

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const/4 v11, 0x5

    move-object/from16 v3, p0

    .line 4073
    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyContactRegistrationState(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v20

    .local v20, "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 4076
    .local v14, "i":I
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v14, v3, :cond_6

    .line 4084
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 4089
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    const-wide/16 v4, -0x1

    .line 4086
    goto/16 :goto_0

    .line 3981
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local v14    # "i":I
    .end local v15    # "iconData":[B
    .end local v17    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v18    # "rawContactRefIms":I
    .end local v19    # "rcsAvatar":Landroid/graphics/Bitmap;
    .end local v20    # "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "\"Me\" contact does not already exists, creating it"

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4068
    .restart local v15    # "iconData":[B
    .restart local v17    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v18    # "rawContactRefIms":I
    .restart local v19    # "rcsAvatar":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v13

    .restart local v13    # "e":Landroid/os/RemoteException;
    const-wide/16 v4, -0x1

    .line 4065
    goto :goto_3

    .line 4068
    .end local v13    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v12

    .local v12, "e":Landroid/content/OperationApplicationException;
    const-wide/16 v4, -0x1

    .line 4067
    goto :goto_3

    .line 4077
    .end local v12    # "e":Landroid/content/OperationApplicationException;
    .restart local v14    # "i":I
    .restart local v20    # "registrationStateOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentProviderOperation;

    .line 4078
    .local v16, "op":Landroid/content/ContentProviderOperation;
    if-nez v16, :cond_7

    .line 4076
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 4079
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 4089
    .end local v16    # "op":Landroid/content/ContentProviderOperation;
    :catch_3
    move-exception v12

    .restart local v12    # "e":Landroid/content/OperationApplicationException;
    const-wide/16 v4, -0x1

    .line 4088
    goto/16 :goto_0
.end method

.method public createRcsContact(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;J)J
    .locals 30
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .param p2, "rawContactId"    # J

    .prologue
    .line 3565
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 3572
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNewRCSContactNeeded(Ljava/lang/String;J)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v25

    if-nez v25, :cond_4

    .line 3581
    :goto_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3584
    .local v18, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3585
    .local v19, "rawContactRefIms":I
    sget-object v25, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "aggregation_mode"

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "account_type"

    const-string/jumbo v27, "com.sonymobile.rcs"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sonymobile/rcs/service/LauncherUtils;->getAccountUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3592
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.number"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3598
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3605
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-status.timestamp"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3612
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.presence.timestamp"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3618
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v25

    if-nez v25, :cond_5

    .line 3648
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    const-string/jumbo v27, ""

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3654
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3662
    :goto_1
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.capability.timestamp"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3670
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    .line 3672
    .local v4, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v25

    if-nez v25, :cond_6

    .line 3677
    :goto_2
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v25

    if-nez v25, :cond_7

    .line 3682
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v6

    .local v6, "clientMode":I
    const/16 v25, 0x1

    .line 3683
    move/from16 v0, v25

    if-eq v0, v6, :cond_8

    const/4 v15, 0x0

    .line 3685
    .local v15, "isIntegratedClient":Z
    :goto_4
    if-eqz v15, :cond_9

    .line 3707
    :goto_5
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v25

    if-nez v25, :cond_10

    .line 3713
    :goto_6
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVoiceCallSupported()Z

    move-result v25

    if-nez v25, :cond_11

    .line 3719
    :goto_7
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v25

    if-nez v25, :cond_12

    .line 3725
    :goto_8
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPresenceDiscoverySupported()Z

    move-result v25

    if-nez v25, :cond_13

    .line 3730
    :goto_9
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSocialPresenceSupported()Z

    move-result v25

    if-nez v25, :cond_14

    .line 3736
    :goto_a
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGeolocationPushSupported()Z

    move-result v25

    if-nez v25, :cond_15

    .line 3742
    :goto_b
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v25

    if-nez v25, :cond_16

    .line 3748
    :goto_c
    if-eqz v15, :cond_17

    .line 3753
    :cond_0
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v25

    if-nez v25, :cond_18

    .line 3758
    :goto_e
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v25

    if-nez v25, :cond_19

    .line 3763
    :goto_f
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGroupChatStoreForwardSupported()Z

    move-result v25

    if-nez v25, :cond_1a

    .line 3768
    :goto_10
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCallComposerSupported()Z

    move-result v25

    if-nez v25, :cond_1b

    .line 3774
    :goto_11
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedMapSupported()Z

    move-result v25

    if-nez v25, :cond_1c

    .line 3780
    :goto_12
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedSketchSupported()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 3786
    :goto_13
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPostCallSupported()Z

    move-result v25

    if-nez v25, :cond_1e

    .line 3792
    :goto_14
    const/4 v12, 0x0

    .line 3793
    .local v12, "hasCommonExtensions":Z
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 3794
    .local v10, "extension":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getSupportedExtensions()Ljava/util/ArrayList;

    move-result-object v17

    .line 3795
    .local v17, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSupportedRcsExtensions()Ljava/lang/String;

    move-result-object v11

    .local v11, "exts":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3796
    .local v16, "j":I
    :goto_15
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_1f

    .line 3811
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.capability.extensions"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data3"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3818
    if-nez v12, :cond_23

    .line 3825
    :goto_16
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.registration-state"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3833
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_24

    .line 3852
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_27

    .line 3855
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_28

    :goto_17
    const-wide/16 v22, -0x1

    .line 3875
    .local v22, "rcsRawContactId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "com.android.contacts"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v21

    .line 3876
    .local v21, "results":[Landroid/content/ContentProviderResult;
    aget-object v25, v21, v19

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v22

    .line 3884
    .end local v21    # "results":[Landroid/content/ContentProviderResult;
    :goto_18
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 3885
    sget-object v25, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "type"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id1"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id2"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3892
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "com.android.contacts"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 3894
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .local v24, "values":Landroid/content/ContentValues;
    const-string/jumbo v25, "raw_contact_id"

    .line 3895
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v25, "rcs_raw_contact_id"

    .line 3896
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v25, "rcs_number"

    .line 3897
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/sonymobile/rcs/provider/eab/AggregationData;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3900
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v25

    if-nez v25, :cond_29

    const/16 v25, 0x0

    :goto_19
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setStatusUpdateTable(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3914
    return-wide v22

    .line 3566
    .end local v4    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v6    # "clientMode":I
    .end local v10    # "extension":Ljava/lang/StringBuffer;
    .end local v11    # "exts":Ljava/lang/String;
    .end local v12    # "hasCommonExtensions":Z
    .end local v15    # "isIntegratedClient":Z
    .end local v16    # "j":I
    .end local v17    # "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v19    # "rawContactRefIms":I
    .end local v22    # "rcsRawContactId":J
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v25

    if-nez v25, :cond_2

    :goto_1a
    const-wide/16 v26, -0x1

    .line 3569
    return-wide v26

    .line 3567
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    const-string/jumbo v26, "RCS contact could not be created loose comparison failed"

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1a

    :cond_3
    const-wide/16 v26, -0x1

    .line 3573
    return-wide v26

    .line 3577
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Creating new RCS rawcontact for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " to be associated to rawContactId "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3620
    .restart local v18    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v19    # "rawContactRefIms":I
    :cond_5
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.free-text"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3627
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/com.sonymobile.rcs.presence-status"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data1"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data2"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPresenceStatus()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3635
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .restart local v24    # "values":Landroid/content/ContentValues;
    const-string/jumbo v25, "raw_contact_id"

    .line 3636
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v25, "mimetype"

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.weblink"

    .line 3637
    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v25, "data1"

    .line 3638
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLinkUrl()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v25, "data2"

    const/16 v26, 0x1

    .line 3639
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "is_primary"

    const/16 v26, 0x1

    .line 3640
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v25, "is_super_primary"

    const/16 v26, 0x1

    .line 3641
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3643
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3673
    .end local v24    # "values":Landroid/content/ContentValues;
    .restart local v4    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.cs-video"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3678
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.image-sharing"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .restart local v6    # "clientMode":I
    :cond_8
    const/4 v15, 0x1

    .line 3683
    goto/16 :goto_4

    .line 3687
    .restart local v15    # "isIntegratedClient":Z
    :cond_9
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v25

    if-nez v25, :cond_c

    .line 3690
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 3697
    :cond_a
    :goto_1b
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v25

    if-nez v25, :cond_e

    .line 3700
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3702
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-offline"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3688
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 3690
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 3692
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session-offline"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 3698
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3700
    :cond_f
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v25

    if-nez v25, :cond_b

    goto/16 :goto_5

    .line 3708
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.video-sharing"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3714
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-voice-call"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3720
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-video-call"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3726
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.presence-discovery"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 3731
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.social-presence"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 3737
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.geolocation-push"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3743
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-thumbnail"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 3748
    :cond_17
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3749
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-http"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 3754
    :cond_18
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->updateunreadmessagecount(JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 3759
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-sf"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 3764
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.group-chat-sf"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 3769
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.call-composer"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 3775
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.shared-map"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 3781
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.shared-sketch"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 3787
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.post-call"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 3797
    .restart local v10    # "extension":Ljava/lang/StringBuffer;
    .restart local v11    # "exts":Ljava/lang/String;
    .restart local v12    # "hasCommonExtensions":Z
    .restart local v16    # "j":I
    .restart local v17    # "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3801
    if-nez v11, :cond_21

    .line 3796
    :cond_20
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_15

    .line 3801
    :cond_21
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_20

    const-string/jumbo v25, ","

    .line 3802
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "ext":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 3803
    .local v13, "i":I
    :goto_1c
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_20

    .line 3804
    aget-object v5, v9, v13

    .line 3805
    .local v5, "capability":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    .line 3803
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 3806
    :cond_22
    const/4 v12, 0x1

    goto :goto_1d

    .line 3820
    .end local v5    # "capability":Ljava/lang/String;
    .end local v9    # "ext":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.capability.support.extension"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 3834
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-contact"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020006

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 3844
    .local v20, "rcsAvatar":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->convertBitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 3845
    .local v14, "iconData":[B
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v25

    if-nez v25, :cond_26

    .line 3848
    :cond_25
    :goto_1e
    sget-object v25, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "raw_contact_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "mimetype"

    const-string/jumbo v27, "vnd.android.cursor.item/photo"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "data15"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "is_primary"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 3845
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v25

    if-eqz v25, :cond_25

    .line 3846
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getContent()[B

    move-result-object v14

    goto :goto_1e

    .line 3853
    .end local v14    # "iconData":[B
    .end local v20    # "rcsAvatar":Landroid/graphics/Bitmap;
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.not-rcs-contact"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 3857
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "vnd.android.cursor.item/com.sonymobile.rcs.rcs-capable-contact"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMimeTypeForContact(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 3880
    .restart local v22    # "rcsRawContactId":J
    :catch_0
    move-exception v8

    .line 3877
    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_18

    .line 3880
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/content/OperationApplicationException;
    const-wide/16 v26, -0x1

    .line 3879
    return-wide v26

    .end local v7    # "e":Landroid/content/OperationApplicationException;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :cond_29
    const/16 v25, 0x5

    .line 3900
    goto/16 :goto_19

    .line 3912
    .end local v24    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v8

    .line 3903
    .restart local v8    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v25

    if-nez v25, :cond_2a

    :goto_1f
    const-wide/16 v26, -0x1

    .line 3906
    return-wide v26

    .line 3904
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Remote exception => "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1f

    .line 3906
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v7

    .line 3908
    .restart local v7    # "e":Landroid/content/OperationApplicationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v25

    if-nez v25, :cond_2b

    :goto_20
    const-wide/16 v26, -0x1

    .line 3911
    return-wide v26

    .line 3909
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Operation exception => "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public deleteRCSEntries()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5321
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/AggregationData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5324
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5325
    return-void
.end method

.method public deleteRCSEntriesInContactsDatabase()V
    .locals 22

    .prologue
    .line 2551
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "rcsRawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    .line 2552
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    .local v4, "rawProjection":[Ljava/lang/String;
    const-string/jumbo v5, "account_type=?"

    .local v5, "rawSelection":Ljava/lang/String;
    const/4 v2, 0x1

    .line 2556
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.sonymobile.rcs"

    aput-object v3, v6, v2

    .local v6, "rawSelectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2561
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2563
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 2566
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 2574
    if-nez v8, :cond_5

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    const-string/jumbo v16, "_id=?"

    .line 2579
    .local v16, "selectionArg":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2610
    return-void

    .line 2574
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "selectionArg":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-nez v8, :cond_3

    .line 2575
    :goto_3
    return-void

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 2567
    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2575
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 2570
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 2574
    :goto_4
    if-eqz v8, :cond_0

    .line 2575
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2571
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Contacts Database Clean entries has failed"

    invoke-virtual {v2, v3, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2575
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 2574
    if-nez v8, :cond_7

    .line 2575
    :goto_5
    throw v2

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 2579
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v16    # "selectionArg":Ljava/lang/String;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 2580
    .local v13, "rcsRawCntctIds":Ljava/lang/Long;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2581
    .local v12, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "_id=?"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2585
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "caller_is_syncadapter"

    const-string/jumbo v7, "true"

    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v3, v7

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2598
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.android.contacts"

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 2607
    :catch_1
    move-exception v15

    .line 2600
    .local v15, "re":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Something went wrong when updating the DB strings"

    invoke-virtual {v2, v3, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2607
    .end local v15    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v11

    .line 2604
    .local v11, "oae":Landroid/content/OperationApplicationException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Something went wrong when updating the DB strings"

    invoke-virtual {v2, v3, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public disableFTsessionCapableContacts()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5346
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsContacts()Ljava/util/List;

    move-result-object v5

    .line 5348
    .local v5, "rcseContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5365
    return-void

    .line 5348
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5349
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v4

    .line 5350
    .local v4, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 5352
    .local v3, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    .line 5356
    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/provider/eab/ContactsManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5361
    :catch_0
    move-exception v1

    .line 5358
    .local v1, "e":Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
    iget-object v6, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5359
    iget-object v6, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Could not save the contact modifications"

    invoke-virtual {v6, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public disableRcseContactIcon()V
    .locals 12

    .prologue
    .line 5382
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsContacts()Ljava/util/List;

    move-result-object v7

    .line 5383
    .local v7, "rcseContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 5396
    return-void

    .line 5383
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5384
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 5385
    .local v6, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5386
    .local v4, "rawContactId":J
    invoke-virtual {p0, v4, v5, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getAssociatedRcsRawContact(JLjava/lang/String;)J

    move-result-wide v8

    .local v8, "rcseRawContactId":J
    const/4 v10, 0x0

    .line 5388
    :try_start_0
    invoke-virtual {p0, v8, v9, v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setStatusUpdateTable(JI)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5393
    :catch_0
    move-exception v1

    .line 5390
    .local v1, "e":Landroid/content/OperationApplicationException;
    iget-object v10, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5391
    iget-object v10, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v11, "Could not disable rcse contact icon"

    invoke-virtual {v10, v11, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public flushContactProvider()V
    .locals 4

    .prologue
    const-string/jumbo v0, "contact_number<> NULL"

    .line 1963
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1964
    return-void
.end method

.method public getAllContacts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2076
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 2077
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "contact_number"

    aput-object v0, v2, v1

    .line 2081
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2084
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 2096
    :goto_0
    return-object v8

    :cond_0
    const/4 v0, 0x0

    .line 2087
    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2088
    .local v7, "number":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2086
    .end local v7    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2089
    .restart local v7    # "number":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2094
    .end local v7    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 2093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAssociatedRcsRawContact(JLjava/lang/String;)J
    .locals 11
    .param p1, "rawContactId"    # J
    .param p3, "rcsNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    .line 4181
    .local v8, "result":J
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/AggregationData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "rcs_raw_contact_id"

    aput-object v3, v2, v7

    const-string/jumbo v3, "rcs_number"

    aput-object v3, v2, v10

    const-string/jumbo v3, "raw_contact_id"

    aput-object v3, v2, v4

    const-string/jumbo v3, "rcs_number=? AND raw_contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v7

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4191
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 4200
    :goto_0
    return-wide v8

    .line 4193
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 4197
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4194
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    goto :goto_1

    .line 4198
    :catchall_0
    move-exception v0

    .line 4197
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 3500
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v0

    .line 3501
    .local v0, "contactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3504
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 3502
    return-object v1
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .locals 28
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1429
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1431
    new-instance v21, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct/range {v21 .. v21}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>()V

    .local v21, "infos":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    const/16 v2, 0x8

    .line 1432
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatusTimestamp(J)V

    .line 1434
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setContact(Ljava/lang/String;)V

    .line 1435
    new-instance v11, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v11}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 1436
    .local v11, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    new-instance v25, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct/range {v25 .. v25}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;-><init>()V

    .local v25, "presenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    const/4 v2, 0x0

    .line 1438
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRegistrationState(I)V

    .line 1439
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "contact_number= ?"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v6, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1449
    .local v13, "cur":Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 1588
    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    .line 1589
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 1591
    return-object v21

    .line 1440
    .end local v13    # "cur":Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    .line 1441
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 1442
    return-object v21

    .line 1450
    .restart local v13    # "cur":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1585
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "rcs_status"

    .line 1452
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    const-string/jumbo v2, "rcs_status_timestamp"

    .line 1454
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatusTimestamp(J)V

    const-string/jumbo v2, "registration_state"

    .line 1456
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRegistrationState(I)V

    const-string/jumbo v2, "display_name"

    .line 1458
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsContactDisplayName(Ljava/lang/String;)V

    const-string/jumbo v2, "presence_sharing_status"

    .line 1462
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPresenceStatus(Ljava/lang/String;)V

    .line 1465
    new-instance v19, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    const-string/jumbo v2, "presence_weblink_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "presence_weblink_url"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    .local v19, "favLink":Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFavoriteLink(Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;)V

    .line 1470
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->getLink()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFavoriteLinkUrl(Ljava/lang/String;)V

    const-string/jumbo v2, "presence_free_text"

    .line 1472
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setFreetext(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    const-string/jumbo v2, "presence_geoloc_exist_flag"

    .line 1476
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1486
    .end local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    :goto_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setGeoloc(Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;)V

    const-string/jumbo v2, "presence_timestamp"

    .line 1488
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setTimestamp(J)V

    const/16 v22, 0x0

    .local v22, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    const-string/jumbo v2, "presence_photo_exist_flag"

    .line 1493
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1530
    .end local v22    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_3
    :goto_3
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    const-string/jumbo v2, "capability_cs_video"

    .line 1533
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCsVideoSupport(Z)V

    const-string/jumbo v2, "capability_file_transfer"

    .line 1535
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    const-string/jumbo v2, "capability_image_sharing"

    .line 1537
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    const-string/jumbo v2, "capability_im_session"

    .line 1539
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    const-string/jumbo v2, "capability_presence_discovery"

    .line 1541
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPresenceDiscoverySupport(Z)V

    const-string/jumbo v2, "capability_social_presence"

    .line 1543
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSocialPresenceSupport(Z)V

    const-string/jumbo v2, "capability_geolocation_push"

    .line 1545
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGeolocationPushSupport(Z)V

    const-string/jumbo v2, "capability_video_sharing"

    .line 1547
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    const-string/jumbo v2, "capability_ip_voice_call"

    .line 1549
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVoiceCallSupport(Z)V

    const-string/jumbo v2, "capability_ip_video_call"

    .line 1551
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVideoCallSupport(Z)V

    const-string/jumbo v2, "capability_file_transfer_thumbnail"

    .line 1553
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferThumbnailSupport(Z)V

    const-string/jumbo v2, "capability_file_transfer_http"

    .line 1555
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferHttpSupport(Z)V

    const-string/jumbo v2, "capability_file_transfer_sf"

    .line 1557
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferStoreForwardSupport(Z)V

    const-string/jumbo v2, "capability_group_chat_sf"

    .line 1559
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGroupChatStoreForwardSupport(Z)V

    const-string/jumbo v2, "capability_call_composer"

    .line 1561
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCallComposerSupport(Z)V

    const-string/jumbo v2, "capability_shared_map"

    .line 1563
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedMapSupport(Z)V

    const-string/jumbo v2, "capability_shared_sketch"

    .line 1565
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedSketchSupport(Z)V

    const-string/jumbo v2, "capability_post_call"

    .line 1567
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPostCallSupport(Z)V

    const-string/jumbo v2, "capability_extensions"

    .line 1571
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1573
    .local v18, "extensions":Ljava/lang/String;
    if-nez v18, :cond_c

    :cond_4
    const-string/jumbo v2, "capability_timestamp"

    .line 1581
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setTimestamp(J)V

    goto/16 :goto_1

    .line 1478
    .end local v18    # "extensions":Ljava/lang/String;
    .restart local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    :cond_5
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .end local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    const-string/jumbo v2, "presence_geoloc_latitude"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string/jumbo v2, "presence_geoloc_longitude"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-string/jumbo v2, "presence_geoloc_altitude"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;-><init>(DDD)V

    .local v3, "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    goto/16 :goto_2

    .end local v3    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    .restart local v22    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_6
    const/16 v27, 0x0

    .local v27, "stream":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v2, "_id"

    .line 1497
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1498
    .local v26, "rowId":I
    sget-object v2, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v26

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .local v24, "photoUri":Landroid/net/Uri;
    const-string/jumbo v2, "presence_photo_etag"

    .line 1500
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1502
    .local v16, "etag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v27

    .line 1503
    .local v27, "stream":Ljava/io/InputStream;
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v12, v2, [B

    .local v12, "content":[B
    const/4 v2, 0x0

    .line 1504
    array-length v4, v12

    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v2, v4}, Ljava/io/InputStream;->read([BII)I

    const/4 v2, 0x0

    .line 1505
    array-length v4, v12

    invoke-static {v12, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1506
    .local v10, "bmp":Landroid/graphics/Bitmap;
    if-nez v10, :cond_7

    .line 1519
    .end local v22    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :goto_4
    if-eqz v27, :cond_3

    .line 1521
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1526
    :catch_0
    move-exception v15

    .line 1523
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Exception while closing stream"

    invoke-virtual {v2, v4, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1507
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v22    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_7
    :try_start_2
    new-instance v23, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v2, v4, v1}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v23, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    move-object/from16 v22, v23

    .end local v23    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .local v22, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    goto :goto_4

    .line 1526
    .end local v10    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "content":[B
    .end local v16    # "etag":Ljava/lang/String;
    .end local v24    # "photoUri":Landroid/net/Uri;
    .end local v26    # "rowId":I
    .end local v27    # "stream":Ljava/io/InputStream;
    .local v22, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :catch_1
    move-exception v14

    .line 1511
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_8

    .line 1519
    :goto_5
    if-eqz v27, :cond_3

    .line 1521
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 1526
    :catch_2
    move-exception v15

    .line 1523
    .restart local v15    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Exception while closing stream"

    invoke-virtual {v2, v4, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1512
    .end local v15    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t get the photo"

    invoke-virtual {v2, v4, v14}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 1526
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    .line 1519
    if-nez v27, :cond_b

    .line 1526
    :cond_9
    :goto_6
    throw v2

    :catch_3
    move-exception v15

    .line 1515
    .restart local v15    # "e":Ljava/io/IOException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-nez v2, :cond_a

    .line 1519
    :goto_7
    if-eqz v27, :cond_3

    .line 1521
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_3

    .line 1526
    :catch_4
    move-exception v15

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Exception while closing stream"

    invoke-virtual {v2, v4, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1516
    :cond_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t get the photo"

    invoke-virtual {v2, v4, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 1521
    .end local v15    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    .line 1526
    :catch_5
    move-exception v15

    .line 1523
    .restart local v15    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Exception while closing stream"

    invoke-virtual {v4, v5, v15}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v15    # "e":Ljava/io/IOException;
    .end local v22    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .restart local v18    # "extensions":Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, ";"

    .line 1574
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, "extensionList":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 1575
    .local v20, "i":I
    :goto_8
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 1576
    aget-object v2, v17, v20

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_d

    .line 1575
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 1577
    :cond_d
    aget-object v2, v17, v20

    invoke-virtual {v11, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->addSupportedExtension(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getContactPhotoEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 4427
    .local v7, "etag":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4429
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsRawContactIdsFromContact(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 4430
    .local v10, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4435
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 4437
    .local v8, "rawContactId":J
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v11

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "raw_contact_id=? AND mimetype=?"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    .line 4442
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.photo-etag"

    aput-object v0, v4, v1

    .line 4446
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4448
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4451
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4454
    .end local v7    # "etag":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4456
    return-object v7

    .line 4431
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "rawContactId":J
    .restart local v7    # "etag":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 4449
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cur":Landroid/database/Cursor;
    .restart local v8    # "rawContactId":J
    :cond_1
    return-object v5

    .line 4452
    :cond_2
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "etag":Ljava/lang/String;
    goto :goto_0
.end method

.method public getContactSavedState(Ljava/lang/String;)Z
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1327
    const/4 v8, 0x0

    .line 1329
    .local v8, "isSaved":Z
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_number = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1331
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1333
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    .end local v8    # "isSaved":Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1346
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    :cond_0
    :goto_1
    return v8

    .line 1334
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "cur":Landroid/database/Cursor;
    .restart local v8    # "isSaved":Z
    :cond_1
    return v9

    :cond_2
    const-string/jumbo v0, "saved_in_addressbook"

    .line 1337
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .local v8, "isSaved":Z
    goto :goto_0

    .line 1345
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "isSaved":Z
    :catch_0
    move-exception v7

    .line 1342
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Internal exception while saving contact state"

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getContactSharingStatus(Ljava/lang/String;)I
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1830
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, -0x1

    .line 1835
    .local v8, "result":I
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "presence_sharing_status"

    aput-object v4, v2, v3

    const-string/jumbo v3, "contact_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1841
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1844
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1847
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1849
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 1857
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_2
    return v8

    .line 1825
    .end local v8    # "result":I
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get sharing status for contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :cond_2
    const/4 v0, -0x1

    .line 1842
    return v0

    :cond_3
    const/4 v0, 0x0

    .line 1845
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_1

    .line 1850
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sharing status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1856
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1853
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Internal exception"

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getMyPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 542
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    invoke-direct {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdForMe()J

    move-result-wide v2

    .line 551
    .local v2, "rawContactId":J
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactDataCursor(J)Landroid/database/Cursor;

    move-result-object v0

    .line 552
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 555
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfoFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v1

    return-object v1

    .line 543
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "rawContactId":J
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Get my presence info"

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;-><init>()V

    return-object v1

    .line 553
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "rawContactId":J
    :cond_2
    return-object v5
.end method

.method public getNumberOfUnreadChatMessages(Ljava/lang/String;)I
    .locals 12
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1197
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1208
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1213
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1215
    .local v7, "messagesNumber":I
    if-nez v6, :cond_1

    .line 1221
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "read_status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1233
    if-eqz v6, :cond_3

    .line 1238
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 1240
    .local v8, "readMessages":I
    if-nez v6, :cond_4

    .line 1245
    :goto_1
    sub-int v0, v7, v8

    return v0

    .line 1209
    .end local v7    # "messagesNumber":I
    .end local v8    # "readMessages":I
    :cond_0
    return v9

    .line 1216
    .restart local v7    # "messagesNumber":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "messagesNumber":I
    :catchall_0
    move-exception v0

    .line 1215
    if-nez v6, :cond_2

    .line 1216
    :goto_2
    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1234
    .restart local v7    # "messagesNumber":I
    :cond_3
    return v9

    .line 1241
    .restart local v8    # "readMessages":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "readMessages":I
    :catchall_1
    move-exception v0

    .line 1240
    if-nez v6, :cond_5

    .line 1241
    :goto_3
    throw v0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4138
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4139
    .local v12, "rawContactsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4140
    .local v6, "contactNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 4141
    .local v8, "countryCode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "mimetype=? AND PHONE_NUMBERS_EQUAL(data1, ?)"

    .line 4145
    .local v3, "selection":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 4152
    .local v4, "selectonArgs":[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v13, "raw_contact_id"

    aput-object v13, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v13, "data1"

    aput-object v13, v2, v5

    const-string/jumbo v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4156
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 4169
    :goto_2
    return-object v12

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectonArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v3, "mimetype=? AND PHONE_NUMBERS_EQUAL(data1, ?) OR PHONE_NUMBERS_EQUAL(data1, ?)"

    goto :goto_0

    .restart local v3    # "selection":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x3

    .line 4145
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_1

    .restart local v4    # "selectonArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    .line 4158
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, "rawContactId":J
    const/4 v0, 0x1

    .line 4159
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4160
    .local v7, "contctName":Ljava/lang/String;
    invoke-direct {p0, v10, v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRawContactRcs(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4157
    .end local v7    # "contctName":Ljava/lang/String;
    .end local v10    # "rawContactId":J
    :cond_3
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4160
    .restart local v7    # "contctName":Ljava/lang/String;
    .restart local v10    # "rawContactId":J
    :cond_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v10, v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNonRcsAssociated(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4162
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4163
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getRcsContacts()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 2041
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .local v8, "rcsNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v0, "contact_number"

    aput-object v0, v2, v9

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "(rcs_status<>? AND rcs_status<>? )"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    .line 2049
    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 2053
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2056
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2059
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2065
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2066
    return-object v8

    .line 2057
    :cond_1
    return-object v8

    .line 2060
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2061
    .local v7, "number":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRcsContactsWithSocialPresence()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 2013
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "rcsNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "(rcs_status<>? AND rcs_status<>? AND rcs_status<>? )"

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    .line 2018
    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2022
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v8, "contact_number"

    aput-object v8, v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2025
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2028
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2031
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2032
    return-object v7

    .line 2026
    :cond_0
    return-object v7

    .line 2029
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isFtBlockedForContact(Ljava/lang/String;)Z
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4707
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4709
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v7

    const-string/jumbo v0, "mimetype"

    aput-object v0, v2, v8

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=? AND data1=?"

    .line 4714
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.ft-blocked"

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    .line 4717
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4719
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 4722
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4727
    return v7

    .line 4720
    :cond_0
    return v7

    .line 4723
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4724
    return v8
.end method

.method public isImBlockedForContact(Ljava/lang/String;)Z
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4573
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4575
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v7

    const-string/jumbo v0, "mimetype"

    aput-object v0, v2, v8

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=? AND data1=?"

    .line 4580
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v0, "vnd.android.cursor.item/com.sonymobile.rcs.im-blocked"

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    .line 4583
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4586
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 4593
    return v7

    .line 4588
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 4590
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    move v0, v8

    .line 4588
    goto :goto_0

    .line 4590
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isNumberBlocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2218
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactSharingStatus(Ljava/lang/String;)I

    move-result v0

    .local v0, "status":I
    const/4 v1, 0x4

    .line 2219
    if-eq v0, v1, :cond_0

    .line 2222
    const/4 v1, 0x0

    return v1

    .line 2220
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isNumberCancelled(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2319
    .local v7, "status":I
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "presence_sharing_status"

    aput-object v3, v2, v8

    const-string/jumbo v3, "contact_number=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2325
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    :goto_0
    const/4 v0, 0x7

    .line 2331
    if-eq v7, v0, :cond_2

    .line 2334
    return v8

    .line 2326
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2329
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2327
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_1

    .line 2332
    :cond_2
    return v9
.end method

.method public isNumberInvited(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2263
    .local v7, "status":I
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "presence_sharing_status"

    aput-object v3, v2, v8

    const-string/jumbo v3, "contact_number=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2269
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    :goto_0
    const/4 v0, 0x6

    .line 2275
    if-eq v7, v0, :cond_2

    .line 2278
    return v8

    .line 2270
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2273
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2271
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_1

    .line 2276
    :cond_2
    return v9
.end method

.method public isNumberShared(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2235
    .local v7, "status":I
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "presence_sharing_status"

    aput-object v3, v2, v8

    const-string/jumbo v3, "contact_number=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2241
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 2247
    if-eq v7, v0, :cond_2

    .line 2250
    return v8

    .line 2242
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2245
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2243
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_1

    .line 2248
    :cond_2
    return v9
.end method

.method public isNumberWilling(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2291
    .local v7, "status":I
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "presence_sharing_status"

    aput-object v3, v2, v8

    const-string/jumbo v3, "contact_number=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2297
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    :goto_0
    const/4 v0, 0x5

    .line 2303
    if-eq v7, v0, :cond_2

    .line 2306
    return v8

    .line 2298
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2301
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2299
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_1

    .line 2304
    :cond_2
    return v9
.end method

.method public isRcsAssociated(Ljava/lang/String;)Z
    .locals 9
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 4212
    const/4 v7, 0x0

    .line 4213
    .local v7, "result":Z
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "contact_number"

    aput-object v3, v2, v8

    const-string/jumbo v3, "contact_number=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4218
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 4224
    const/4 v7, 0x0

    .line 4226
    :goto_0
    return v7

    .line 4219
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4222
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4220
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public isRcsValidNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2347
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public modifyRcsContactInProvider(Ljava/lang/String;I)V
    .locals 12
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "rcsStatus"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1975
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v10

    const-string/jumbo v3, "contact_number=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 1982
    .local v6, "contactRowID":J
    if-nez v8, :cond_0

    .line 1989
    :goto_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "contact_number"

    .line 1990
    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "presence_sharing_status"

    .line 1991
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "timestamp"

    .line 1992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v0, -0x1

    .line 1994
    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 1996
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2004
    :goto_1
    return-void

    .line 1983
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1986
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1984
    :cond_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_2

    .line 1999
    .restart local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "contact_number=?"

    new-array v3, v11, [Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public removeMyPhotoIcon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "myself"

    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactPhotoIcon(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Remove my photo-icon"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 532
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Internal exception"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public removeRcseRawContacts()V
    .locals 4

    .prologue
    const-string/jumbo v0, "(account_type =?) "

    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    .line 5372
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.sonymobile.rcs"

    aput-object v3, v1, v2

    .line 5375
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5376
    return-void
.end method

.method public declared-synchronized setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .prologue
    monitor-enter p0

    .line 3474
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3477
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v2

    .line 3478
    .local v2, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 3480
    .local v1, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v1, p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3484
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/provider/eab/ContactsManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 3490
    return-void

    .line 3489
    :catch_0
    move-exception v0

    .line 3486
    .local v0, "e":Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3487
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Could not save the contact modifications"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
    .end local v1    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v2    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .param p3, "contactType"    # I
    .param p4, "registrationState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 3373
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3376
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v3

    .line 3377
    .local v3, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 3380
    .local v2, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v2, p3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 3383
    invoke-virtual {v2, p4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRegistrationState(I)V

    .line 3386
    if-eq p4, v5, :cond_11

    move v1, v4

    .line 3389
    .local v1, "isRegistered":Z
    :goto_0
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v6

    if-nez v6, :cond_12

    :cond_0
    move v6, v4

    :goto_1
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCsVideoSupport(Z)V

    .line 3394
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v6

    if-nez v6, :cond_13

    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtAlwaysOn()Z

    move-result v6

    if-nez v6, :cond_15

    :goto_2
    move v6, v4

    :goto_3
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    .line 3398
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v6

    if-nez v6, :cond_16

    :cond_2
    move v6, v4

    :goto_4
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    .line 3402
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v6

    if-nez v6, :cond_17

    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v6

    if-nez v6, :cond_19

    :goto_5
    move v6, v4

    :goto_6
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    .line 3405
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v6

    if-nez v6, :cond_1a

    :cond_4
    move v6, v4

    :goto_7
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    .line 3408
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGeolocationPushSupported()Z

    move-result v6

    if-nez v6, :cond_1b

    :cond_5
    move v6, v4

    :goto_8
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGeolocationPushSupport(Z)V

    .line 3412
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_6
    move v6, v4

    :goto_9
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferThumbnailSupport(Z)V

    .line 3418
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v6

    if-nez v6, :cond_1d

    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtHttpCapAlwaysOn()Z

    move-result v6

    if-nez v6, :cond_1f

    :goto_a
    move v6, v4

    :goto_b
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferHttpSupport(Z)V

    .line 3424
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v6

    if-nez v6, :cond_20

    :cond_8
    move v6, v4

    :goto_c
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferStoreForwardSupport(Z)V

    .line 3428
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGroupChatStoreForwardSupported()Z

    move-result v6

    if-nez v6, :cond_21

    :cond_9
    move v6, v4

    :goto_d
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGroupChatStoreForwardSupport(Z)V

    .line 3431
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVoiceCallSupported()Z

    move-result v6

    if-nez v6, :cond_22

    :cond_a
    move v6, v4

    :goto_e
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVoiceCallSupport(Z)V

    .line 3434
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v6

    if-nez v6, :cond_23

    :cond_b
    move v6, v4

    :goto_f
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVideoCallSupport(Z)V

    .line 3437
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCallComposerSupported()Z

    move-result v6

    if-nez v6, :cond_24

    :cond_c
    move v6, v4

    :goto_10
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCallComposerSupport(Z)V

    .line 3440
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedMapSupported()Z

    move-result v6

    if-nez v6, :cond_25

    :cond_d
    move v6, v4

    :goto_11
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedMapSupport(Z)V

    .line 3443
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedSketchSupported()Z

    move-result v6

    if-nez v6, :cond_26

    :cond_e
    move v6, v4

    :goto_12
    invoke-virtual {p2, v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedSketchSupport(Z)V

    .line 3446
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPostCallSupported()Z

    move-result v6

    if-nez v6, :cond_27

    :goto_13
    move v5, v4

    :cond_f
    invoke-virtual {p2, v5}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPostCallSupport(Z)V

    .line 3448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setTimestamp(J)V

    .line 3450
    if-eqz v1, :cond_28

    .line 3455
    :goto_14
    invoke-virtual {v2, p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3459
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/provider/eab/ContactsManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    :goto_15
    monitor-exit p0

    .line 3465
    return-void

    .end local v1    # "isRegistered":Z
    :cond_11
    move v1, v5

    .line 3386
    goto/16 :goto_0

    .line 3389
    .restart local v1    # "isRegistered":Z
    :cond_12
    if-eqz v1, :cond_0

    move v6, v5

    goto/16 :goto_1

    .line 3394
    :cond_13
    if-eqz v1, :cond_1

    :cond_14
    move v6, v5

    goto/16 :goto_3

    :cond_15
    :try_start_2
    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v6

    if-nez v6, :cond_14

    goto/16 :goto_2

    .line 3398
    :cond_16
    if-eqz v1, :cond_2

    move v6, v5

    goto/16 :goto_4

    .line 3402
    :cond_17
    if-eqz v1, :cond_3

    :cond_18
    move v6, v5

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v6

    if-nez v6, :cond_18

    goto/16 :goto_5

    .line 3405
    :cond_1a
    if-eqz v1, :cond_4

    move v6, v5

    goto/16 :goto_7

    .line 3408
    :cond_1b
    if-eqz v1, :cond_5

    move v6, v5

    goto/16 :goto_8

    .line 3412
    :cond_1c
    if-eqz v1, :cond_6

    move v6, v5

    goto/16 :goto_9

    .line 3418
    :cond_1d
    if-eqz v1, :cond_7

    :cond_1e
    move v6, v5

    goto/16 :goto_b

    :cond_1f
    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_a

    .line 3424
    :cond_20
    if-eqz v1, :cond_8

    move v6, v5

    goto/16 :goto_c

    .line 3428
    :cond_21
    if-eqz v1, :cond_9

    move v6, v5

    goto/16 :goto_d

    .line 3431
    :cond_22
    if-eqz v1, :cond_a

    move v6, v5

    goto/16 :goto_e

    .line 3434
    :cond_23
    if-eqz v1, :cond_b

    move v6, v5

    goto/16 :goto_f

    .line 3437
    :cond_24
    if-eqz v1, :cond_c

    move v6, v5

    goto/16 :goto_10

    .line 3440
    :cond_25
    if-eqz v1, :cond_d

    move v6, v5

    goto/16 :goto_11

    .line 3443
    :cond_26
    if-eqz v1, :cond_e

    move v6, v5

    goto/16 :goto_12

    .line 3446
    :cond_27
    if-nez v1, :cond_f

    goto/16 :goto_13

    .line 3451
    :cond_28
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->clearSupportedExtensions()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_14

    .end local v1    # "isRegistered":Z
    .end local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3464
    .restart local v1    # "isRegistered":Z
    .restart local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :catch_0
    move-exception v0

    .line 3461
    .local v0, "e":Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
    :try_start_3
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3462
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Could not save the contact modifications"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_15
.end method

.method public setContactCapabilitiesTimestamp(Ljava/lang/String;J)V
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 3515
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3519
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v3

    .line 3520
    .local v3, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 3521
    .local v2, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 3522
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v0, p2, p3}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setTimestamp(J)V

    .line 3523
    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 3525
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/provider/eab/ContactsManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    :cond_0
    :goto_1
    return-void

    .line 3516
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting contact capabilities timestamp for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 3530
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :catch_0
    move-exception v1

    .line 3527
    .local v1, "e":Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3528
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Could not update the contact capabilities timestamp"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setContactDisplayName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 5565
    if-eqz p2, :cond_0

    .line 5568
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "display_name"

    .line 5569
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5570
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_number = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5572
    return-void

    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string/jumbo p2, ""

    .line 5566
    goto :goto_0
.end method

.method public setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    .locals 60
    .param p1, "newInfo"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .param p2, "oldInfo"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_16

    .line 601
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 604
    .local v13, "contact":Ljava/lang/String;
    const/16 v37, 0x0

    .line 605
    .local v37, "hasEntryInRichAddressBook":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v10, "contact_number"

    aput-object v10, v6, v8

    const-string/jumbo v7, "contact_number=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v13, v8, v10

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 610
    .local v28, "cur":Landroid/database/Cursor;
    if-nez v28, :cond_17

    .line 616
    :goto_1
    new-instance v59, Landroid/content/ContentValues;

    invoke-direct/range {v59 .. v59}, Landroid/content/ContentValues;-><init>()V

    .local v59, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "contact_number"

    .line 617
    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "rcs_status"

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "rcs_status_timestamp"

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatusTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_19

    const/16 v40, 0x0

    .line 627
    .local v40, "isRegistered":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v44

    .local v44, "newCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    const-string/jumbo v5, "capability_cs_video"

    .line 628
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_0
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_file_transfer"

    .line 630
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_1d

    :goto_4
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_image_sharing"

    .line 633
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_2
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_im_session"

    .line 635
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_21

    :goto_7
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_presence_discovery"

    .line 639
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPresenceDiscoverySupported()Z

    move-result v4

    if-nez v4, :cond_22

    :cond_4
    const/4 v4, 0x0

    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_social_presence"

    .line 641
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSocialPresenceSupported()Z

    move-result v4

    if-nez v4, :cond_23

    :cond_5
    const/4 v4, 0x0

    :goto_a
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_video_sharing"

    .line 643
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_6
    const/4 v4, 0x0

    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_geolocation_push"

    .line 645
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGeolocationPushSupported()Z

    move-result v4

    if-nez v4, :cond_25

    :cond_7
    const/4 v4, 0x0

    :goto_c
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_ip_voice_call"

    .line 647
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVoiceCallSupported()Z

    move-result v4

    if-nez v4, :cond_26

    :cond_8
    const/4 v4, 0x0

    :goto_d
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_ip_video_call"

    .line 649
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v4

    if-nez v4, :cond_27

    :cond_9
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_file_transfer_http"

    .line 651
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v4

    if-nez v4, :cond_28

    :cond_a
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtHttpCapAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_2a

    :goto_f
    const/4 v4, 0x0

    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_file_transfer_thumbnail"

    .line 654
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v4

    if-nez v4, :cond_2b

    :cond_b
    const/4 v4, 0x0

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_file_transfer_sf"

    .line 656
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_c
    const/4 v4, 0x0

    :goto_12
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_group_chat_sf"

    .line 658
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGroupChatStoreForwardSupported()Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_d
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_call_composer"

    .line 660
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCallComposerSupported()Z

    move-result v4

    if-nez v4, :cond_2e

    :cond_e
    const/4 v4, 0x0

    :goto_14
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_shared_map"

    .line 662
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedMapSupported()Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_f
    const/4 v4, 0x0

    :goto_15
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_shared_sketch"

    .line 664
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedSketchSupported()Z

    move-result v4

    if-nez v4, :cond_30

    :cond_10
    const/4 v4, 0x0

    :goto_16
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "capability_post_call"

    .line 666
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPostCallSupported()Z

    move-result v4

    if-nez v4, :cond_31

    :cond_11
    const/4 v4, 0x0

    :goto_17
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getSupportedExtensions()Ljava/util/ArrayList;

    move-result-object v45

    .line 671
    .local v45, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v40, :cond_32

    .line 672
    :goto_18
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .local v16, "aggregatedExtensions":Ljava/lang/StringBuffer;
    const/16 v38, 0x0

    .line 673
    .local v38, "i":I
    :goto_19
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v38

    if-lt v0, v4, :cond_33

    const-string/jumbo v4, "capability_extensions"

    .line 676
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getTimestamp()J

    move-result-wide v42

    .local v42, "newCapTimestamp":J
    const-wide/16 v4, 0x0

    .line 680
    cmp-long v4, v42, v4

    if-nez v4, :cond_12

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    :cond_12
    const-string/jumbo v4, "capability_timestamp"

    .line 684
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v46

    .local v46, "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    const-string/jumbo v4, "presence_sharing_status"

    .line 688
    invoke-virtual/range {v46 .. v46}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPresenceStatus()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "presence_free_text"

    .line 690
    invoke-virtual/range {v46 .. v46}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {v46 .. v46}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLink()Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    move-result-object v35

    .line 692
    .local v35, "favLink":Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
    if-eqz v35, :cond_34

    const-string/jumbo v4, "presence_weblink_name"

    .line 696
    invoke-virtual/range {v35 .. v35}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "presence_weblink_url"

    .line 697
    invoke-virtual/range {v35 .. v35}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->getLink()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :goto_1a
    invoke-virtual/range {v46 .. v46}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    move-result-object v36

    .line 701
    .local v36, "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    if-eqz v36, :cond_35

    const-string/jumbo v4, "presence_geoloc_exist_flag"

    .line 708
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->TRUE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "presence_geoloc_latitude"

    .line 710
    invoke-virtual/range {v36 .. v36}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v4, "presence_geoloc_longitude"

    .line 711
    invoke-virtual/range {v36 .. v36}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v4, "presence_geoloc_altitude"

    .line 712
    invoke-virtual/range {v36 .. v36}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->getAltitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :goto_1b
    const-string/jumbo v4, "presence_timestamp"

    .line 714
    invoke-virtual/range {v46 .. v46}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 716
    invoke-virtual/range {v46 .. v46}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v51

    .line 717
    .local v51, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    if-eqz v51, :cond_36

    .line 722
    invoke-virtual/range {v51 .. v51}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getContent()[B

    move-result-object v4

    if-nez v4, :cond_37

    const-string/jumbo v4, "presence_photo_exist_flag"

    .line 726
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->FALSE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    const-string/jumbo v4, "presence_photo_etag"

    .line 729
    invoke-virtual/range {v51 .. v51}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_1d
    invoke-static {v13}, Lcom/sonymobile/rcs/utils/ContactUtils;->isNumberInAddressBook(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string/jumbo v4, "saved_in_addressbook"

    .line 734
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->FALSE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    const-string/jumbo v4, "registration_state"

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    if-nez v37, :cond_39

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v59

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 753
    :goto_1f
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v4

    const/16 v5, 0x8

    if-ne v5, v4, :cond_3a

    .line 758
    :cond_13
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getContactCapabilityManager()Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->removeFromRcsContactsCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_14
    :goto_20
    if-nez v51, :cond_3b

    .line 790
    :cond_15
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v56

    .line 792
    .local v56, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 798
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .local v48, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v38, 0x0

    .line 799
    :goto_22
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v38

    if-lt v0, v4, :cond_3d

    .line 1152
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 1172
    :goto_23
    return-void

    .line 596
    .end local v13    # "contact":Ljava/lang/String;
    .end local v16    # "aggregatedExtensions":Ljava/lang/StringBuffer;
    .end local v28    # "cur":Landroid/database/Cursor;
    .end local v35    # "favLink":Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
    .end local v36    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    .end local v37    # "hasEntryInRichAddressBook":Z
    .end local v38    # "i":I
    .end local v40    # "isRegistered":Z
    .end local v42    # "newCapTimestamp":J
    .end local v44    # "newCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v45    # "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .end local v48    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v51    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .end local v56    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v59    # "values":Landroid/content/ContentValues;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Set contact info for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    .restart local v13    # "contact":Ljava/lang/String;
    .restart local v28    # "cur":Landroid/database/Cursor;
    .restart local v37    # "hasEntryInRichAddressBook":Z
    :cond_17
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_18

    .line 614
    :goto_24
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 612
    :cond_18
    const/16 v37, 0x1

    goto :goto_24

    .restart local v59    # "values":Landroid/content/ContentValues;
    :cond_19
    const/16 v40, 0x1

    .line 625
    goto/16 :goto_2

    .line 628
    .restart local v40    # "isRegistered":Z
    .restart local v44    # "newCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_1a
    if-eqz v40, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 630
    :cond_1b
    if-eqz v40, :cond_1

    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_4

    .line 633
    :cond_1e
    if-eqz v40, :cond_2

    const/4 v4, 0x1

    goto/16 :goto_6

    .line 635
    :cond_1f
    if-eqz v40, :cond_3

    :cond_20
    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_7

    .line 639
    :cond_22
    if-eqz v40, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_9

    .line 641
    :cond_23
    if-eqz v40, :cond_5

    const/4 v4, 0x1

    goto/16 :goto_a

    .line 643
    :cond_24
    if-eqz v40, :cond_6

    const/4 v4, 0x1

    goto/16 :goto_b

    .line 645
    :cond_25
    if-eqz v40, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_c

    .line 647
    :cond_26
    if-eqz v40, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_d

    .line 649
    :cond_27
    if-eqz v40, :cond_9

    const/4 v4, 0x1

    goto/16 :goto_e

    .line 651
    :cond_28
    if-eqz v40, :cond_a

    :cond_29
    const/4 v4, 0x1

    goto/16 :goto_10

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v4

    if-nez v4, :cond_29

    goto/16 :goto_f

    .line 654
    :cond_2b
    if-eqz v40, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_11

    .line 656
    :cond_2c
    if-eqz v40, :cond_c

    const/4 v4, 0x1

    goto/16 :goto_12

    .line 658
    :cond_2d
    if-eqz v40, :cond_d

    const/4 v4, 0x1

    goto/16 :goto_13

    .line 660
    :cond_2e
    if-eqz v40, :cond_e

    const/4 v4, 0x1

    goto/16 :goto_14

    .line 662
    :cond_2f
    if-eqz v40, :cond_f

    const/4 v4, 0x1

    goto/16 :goto_15

    .line 664
    :cond_30
    if-eqz v40, :cond_10

    const/4 v4, 0x1

    goto/16 :goto_16

    .line 666
    :cond_31
    if-eqz v40, :cond_11

    const/4 v4, 0x1

    goto/16 :goto_17

    .line 671
    .restart local v45    # "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_32
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_18

    .line 674
    .restart local v16    # "aggregatedExtensions":Ljava/lang/StringBuffer;
    .restart local v38    # "i":I
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_19

    .restart local v35    # "favLink":Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
    .restart local v42    # "newCapTimestamp":J
    .restart local v46    # "newPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    :cond_34
    const-string/jumbo v4, "presence_weblink_name"

    const-string/jumbo v5, ""

    .line 693
    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "presence_weblink_url"

    const-string/jumbo v5, ""

    .line 694
    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .restart local v36    # "geoloc":Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    :cond_35
    const-string/jumbo v4, "presence_geoloc_exist_flag"

    .line 702
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->FALSE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "presence_geoloc_latitude"

    const/4 v5, 0x0

    .line 704
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "presence_geoloc_longitude"

    const/4 v5, 0x0

    .line 705
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "presence_geoloc_altitude"

    const/4 v5, 0x0

    .line 706
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1b

    .restart local v51    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_36
    const-string/jumbo v4, "presence_photo_etag"

    const-string/jumbo v5, ""

    .line 718
    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "presence_photo_exist_flag"

    .line 719
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->FALSE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_37
    const-string/jumbo v4, "presence_photo_exist_flag"

    .line 723
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->TRUE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_38
    const-string/jumbo v4, "saved_in_addressbook"

    .line 732
    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->TRUE_VALUE:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 742
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "contact_number=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v13, v10, v11

    move-object/from16 v0, v59

    invoke-virtual {v4, v5, v0, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 753
    :cond_3a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_13

    .line 755
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getContactCapabilityManager()Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->addInRcsContactsCache(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_20

    .line 765
    :catch_0
    move-exception v33

    .line 762
    .local v33, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected Exception"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 768
    .end local v33    # "e":Ljava/lang/Exception;
    :cond_3b
    invoke-virtual/range {v51 .. v51}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getContent()[B

    move-result-object v50

    .line 769
    .local v50, "photoContent":[B
    if-eqz v50, :cond_15

    .line 770
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getProfileRowId(Ljava/lang/String;)I

    move-result v58

    .line 771
    .local v58, "rowId":I
    sget-object v4, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v58

    int-to-long v10, v0

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    .line 773
    .local v52, "photoUri":Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v49

    .line 774
    .local v49, "outstream":Ljava/io/OutputStream;
    invoke-virtual/range {v49 .. v50}, Ljava/io/OutputStream;->write([B)V

    .line 775
    invoke-virtual/range {v49 .. v49}, Ljava/io/OutputStream;->flush()V

    .line 776
    invoke-virtual/range {v49 .. v49}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_21

    .line 785
    .end local v49    # "outstream":Ljava/io/OutputStream;
    :catch_1
    move-exception v31

    .line 778
    .local v31, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Photo can\'t be saved"

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 785
    .end local v31    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v32

    .line 782
    .local v32, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Photo can\'t be saved"

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 794
    .end local v32    # "e":Ljava/io/IOException;
    .end local v50    # "photoContent":[B
    .end local v52    # "photoUri":Landroid/net/Uri;
    .end local v58    # "rowId":I
    .restart local v56    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3c
    return-void

    .line 800
    .restart local v48    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3d
    move-object/from16 v0, v56

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    .line 803
    .local v54, "rawContactId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v13}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getAssociatedRcsRawContact(JLjava/lang/String;)J

    move-result-wide v6

    .line 805
    .local v6, "rcsRawContactId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 809
    :goto_25
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v4

    if-eqz v4, :cond_40

    const-wide/16 v4, -0x1

    .line 840
    cmp-long v4, v6, v4

    if-nez v4, :cond_42

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createRcsContact(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;J)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 848
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setStatusUpdateTable(JI)V
    :try_end_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 799
    :cond_3e
    :goto_26
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_22

    .line 806
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "for number : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "rawcontact : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "associated rcs raw contact : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_25

    :cond_40
    const-wide/16 v4, -0x1

    .line 810
    cmp-long v4, v6, v4

    if-eqz v4, :cond_41

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 818
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "caller_is_syncadapter"

    const-string/jumbo v8, "true"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/provider/eab/AggregationData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "rcs_raw_contact_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1144
    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1145
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->updateunreadmessagecount(JLjava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1146
    .local v47, "op":Landroid/content/ContentProviderOperation;
    if-eqz v47, :cond_3e

    .line 1147
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    .line 853
    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    :catch_3
    move-exception v29

    .line 850
    .local v29, "e":Landroid/content/OperationApplicationException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Exception tryin to set status update table"

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 861
    .end local v29    # "e":Landroid/content/OperationApplicationException;
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v10

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyContactTypeForContact(JLjava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v27

    .local v27, "contactTypeOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v41, 0x0

    .line 863
    .local v41, "j":I
    :goto_27
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v41

    if-lt v0, v4, :cond_55

    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.cs-video"

    .line 875
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v4

    if-nez v4, :cond_57

    :cond_43
    const/4 v10, 0x0

    :goto_28
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 879
    .restart local v47    # "op":Landroid/content/ContentProviderOperation;
    if-nez v47, :cond_58

    :goto_29
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.image-sharing"

    .line 883
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v4

    if-nez v4, :cond_59

    :cond_44
    const/4 v10, 0x0

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 887
    if-nez v47, :cond_5a

    .line 891
    :goto_2b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v26

    .local v26, "clientMode":I
    const/4 v4, 0x1

    .line 892
    move/from16 v0, v26

    if-eq v4, v0, :cond_5b

    const/16 v39, 0x0

    .line 894
    .local v39, "isIntegratedClient":Z
    :goto_2c
    if-eqz v39, :cond_5c

    :cond_45
    :goto_2d
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.video-sharing"

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v4

    if-nez v4, :cond_6e

    :cond_46
    const/4 v10, 0x0

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 955
    if-nez v47, :cond_6f

    :goto_2f
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-voice-call"

    .line 960
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVoiceCallSupported()Z

    move-result v4

    if-nez v4, :cond_70

    :cond_47
    const/4 v10, 0x0

    :goto_30
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVoiceCallSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 964
    if-nez v47, :cond_71

    :goto_31
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.ip-video-call"

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v4

    if-nez v4, :cond_72

    :cond_48
    const/4 v10, 0x0

    :goto_32
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 972
    if-nez v47, :cond_73

    :goto_33
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.presence-discovery"

    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPresenceDiscoverySupported()Z

    move-result v4

    if-nez v4, :cond_74

    :cond_49
    const/4 v10, 0x0

    :goto_34
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPresenceDiscoverySupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 980
    if-nez v47, :cond_75

    :goto_35
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.social-presence"

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSocialPresenceSupported()Z

    move-result v4

    if-nez v4, :cond_76

    :cond_4a
    const/4 v10, 0x0

    :goto_36
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSocialPresenceSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 988
    if-nez v47, :cond_77

    :goto_37
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.geolocation-push"

    .line 993
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGeolocationPushSupported()Z

    move-result v4

    if-nez v4, :cond_78

    :cond_4b
    const/4 v10, 0x0

    :goto_38
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGeolocationPushSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 997
    if-nez v47, :cond_79

    :goto_39
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-thumbnail"

    .line 1002
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v4

    if-nez v4, :cond_7a

    :cond_4c
    const/4 v10, 0x0

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferThumbnailSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1006
    if-nez v47, :cond_7b

    .line 1010
    :goto_3b
    if-eqz v39, :cond_7c

    :cond_4d
    :goto_3c
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-sf"

    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v4

    if-nez v4, :cond_81

    :cond_4e
    const/4 v10, 0x0

    :goto_3d
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferStoreForwardSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1034
    if-nez v47, :cond_82

    :goto_3e
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.group-chat-sf"

    .line 1039
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGroupChatStoreForwardSupported()Z

    move-result v4

    if-nez v4, :cond_83

    :cond_4f
    const/4 v10, 0x0

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isGroupChatStoreForwardSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1043
    if-nez v47, :cond_84

    :goto_40
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.call-composer"

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCallComposerSupported()Z

    move-result v4

    if-nez v4, :cond_85

    :cond_50
    const/4 v10, 0x0

    :goto_41
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCallComposerSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1052
    if-nez v47, :cond_86

    :goto_42
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.shared-map"

    .line 1057
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedMapSupported()Z

    move-result v4

    if-nez v4, :cond_87

    :cond_51
    const/4 v10, 0x0

    :goto_43
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedMapSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1061
    if-nez v47, :cond_88

    :goto_44
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.shared-sketch"

    .line 1066
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedSketchSupported()Z

    move-result v4

    if-nez v4, :cond_89

    :cond_52
    const/4 v10, 0x0

    :goto_45
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSharedSketchSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1070
    if-nez v47, :cond_8a

    :goto_46
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.post-call"

    .line 1075
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPostCallSupported()Z

    move-result v4

    if-nez v4, :cond_8b

    :cond_53
    const/4 v10, 0x0

    :goto_47
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPostCallSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1079
    if-nez v47, :cond_8c

    .line 1084
    :goto_48
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getSupportedExtensions()Ljava/util/ArrayList;

    move-result-object v9

    .line 1085
    .local v9, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v40, :cond_8d

    .line 1089
    :goto_49
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getSupportedExtensions()Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyExtensionsCapabilityForContact(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v34

    .local v34, "extensionOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v41, 0x0

    .line 1092
    :goto_4a
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v41

    if-lt v0, v4, :cond_8e

    .line 1100
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getTimestamp()J

    move-result-wide v14

    .local v14, "modifyCapTimestamp":J
    const-wide/16 v4, 0x0

    .line 1101
    cmp-long v4, v14, v4

    if-nez v4, :cond_54

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    :cond_54
    move-object/from16 v10, p0

    move-wide v11, v6

    .line 1105
    invoke-direct/range {v10 .. v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyCapabilityTimestampForContact(JLjava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1106
    if-nez v47, :cond_90

    :goto_4b
    const-string/jumbo v23, ""

    .line 1112
    .local v23, "newFreeText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v4

    if-nez v4, :cond_91

    :goto_4c
    const-string/jumbo v24, ""

    .line 1117
    .local v24, "oldFreeText":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v4

    if-nez v4, :cond_92

    .line 1120
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v4

    if-nez v4, :cond_93

    const/16 v25, 0x0

    :goto_4e
    move-object/from16 v17, p0

    move-wide/from16 v18, v6

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v25}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyContactRegistrationState(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v57

    .local v57, "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v41, 0x0

    .line 1125
    :goto_4f
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v41

    if-lt v0, v4, :cond_94

    .line 1133
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v22

    move-object/from16 v17, p0

    move-wide/from16 v18, v6

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v22}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyPresenceForContact(JLjava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/util/ArrayList;

    move-result-object v53

    .local v53, "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/16 v41, 0x0

    .line 1136
    :goto_50
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v41

    if-ge v0, v4, :cond_41

    .line 1137
    move-object/from16 v0, v53

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    check-cast v47, Landroid/content/ContentProviderOperation;

    .line 1138
    .restart local v47    # "op":Landroid/content/ContentProviderOperation;
    if-nez v47, :cond_96

    .line 1136
    :goto_51
    add-int/lit8 v41, v41, 0x1

    goto :goto_50

    .line 864
    .end local v9    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "modifyCapTimestamp":J
    .end local v23    # "newFreeText":Ljava/lang/String;
    .end local v24    # "oldFreeText":Ljava/lang/String;
    .end local v26    # "clientMode":I
    .end local v34    # "extensionOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v39    # "isIntegratedClient":Z
    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    .end local v53    # "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v57    # "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_55
    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/content/ContentProviderOperation;

    .line 865
    .restart local v47    # "op":Landroid/content/ContentProviderOperation;
    if-nez v47, :cond_56

    .line 863
    :goto_52
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_27

    .line 866
    :cond_56
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 875
    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    :cond_57
    if-eqz v40, :cond_43

    const/4 v10, 0x1

    goto/16 :goto_28

    .line 880
    .restart local v47    # "op":Landroid/content/ContentProviderOperation;
    :cond_58
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    .line 883
    :cond_59
    if-eqz v40, :cond_44

    const/4 v10, 0x1

    goto/16 :goto_2a

    .line 888
    :cond_5a
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    .restart local v26    # "clientMode":I
    :cond_5b
    const/16 v39, 0x1

    .line 892
    goto/16 :goto_2c

    .restart local v39    # "isIntegratedClient":Z
    :cond_5c
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    if-nez v4, :cond_61

    :cond_5d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_63

    :cond_5e
    :goto_53
    const/4 v10, 0x0

    :goto_54
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 907
    if-nez v47, :cond_64

    :goto_55
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session-offline"

    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    if-eqz v4, :cond_65

    :cond_5f
    const/4 v10, 0x0

    :goto_56
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    if-eqz v4, :cond_66

    const/4 v11, 0x0

    :goto_57
    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 921
    if-nez v47, :cond_67

    :goto_58
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer"

    .line 927
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v4

    if-nez v4, :cond_68

    :cond_60
    const/4 v10, 0x0

    :goto_59
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 934
    if-nez v47, :cond_69

    :goto_5a
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-offline"

    .line 939
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v4

    if-eqz v4, :cond_6a

    :goto_5b
    const/4 v10, 0x0

    :goto_5c
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v11, 0x0

    :goto_5d
    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 945
    if-eqz v47, :cond_45

    .line 946
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    .line 898
    :cond_61
    if-eqz v40, :cond_5d

    :cond_62
    const/4 v10, 0x1

    goto :goto_54

    :cond_63
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5e

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_62

    goto/16 :goto_53

    .line 908
    :cond_64
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 912
    :cond_65
    if-nez v40, :cond_5f

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5f

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5f

    const/4 v10, 0x1

    goto/16 :goto_56

    :cond_66
    const/4 v11, 0x1

    goto/16 :goto_57

    .line 922
    :cond_67
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_58

    .line 927
    :cond_68
    if-eqz v40, :cond_60

    const/4 v10, 0x1

    goto/16 :goto_59

    .line 935
    :cond_69
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 939
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v4

    if-eqz v4, :cond_6c

    :cond_6b
    const/4 v10, 0x1

    goto :goto_5c

    :cond_6c
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_6b

    goto/16 :goto_5b

    :cond_6d
    const/4 v11, 0x1

    goto :goto_5d

    .line 951
    :cond_6e
    if-eqz v40, :cond_46

    const/4 v10, 0x1

    goto/16 :goto_2e

    .line 956
    :cond_6f
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 960
    :cond_70
    if-eqz v40, :cond_47

    const/4 v10, 0x1

    goto/16 :goto_30

    .line 965
    :cond_71
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 968
    :cond_72
    if-eqz v40, :cond_48

    const/4 v10, 0x1

    goto/16 :goto_32

    .line 973
    :cond_73
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    .line 976
    :cond_74
    if-eqz v40, :cond_49

    const/4 v10, 0x1

    goto/16 :goto_34

    .line 981
    :cond_75
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 984
    :cond_76
    if-eqz v40, :cond_4a

    const/4 v10, 0x1

    goto/16 :goto_36

    .line 989
    :cond_77
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    .line 993
    :cond_78
    if-eqz v40, :cond_4b

    const/4 v10, 0x1

    goto/16 :goto_38

    .line 998
    :cond_79
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 1002
    :cond_7a
    if-eqz v40, :cond_4c

    const/4 v10, 0x1

    goto/16 :goto_3a

    .line 1007
    :cond_7b
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3b

    :cond_7c
    const-string/jumbo v9, "vnd.android.cursor.item/com.sonymobile.rcs.capability.file-transfer-http"

    .line 1012
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v4

    if-nez v4, :cond_7e

    :cond_7d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtHttpCapAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_80

    :goto_5e
    const/4 v10, 0x0

    :goto_5f
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v11

    move-object/from16 v5, p0

    move-object v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyMimeTypeForContact(JLjava/lang/String;Ljava/lang/String;ZZ)Landroid/content/ContentProviderOperation;

    move-result-object v47

    .line 1024
    if-eqz v47, :cond_4d

    .line 1025
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    .line 1012
    :cond_7e
    if-eqz v40, :cond_7d

    :cond_7f
    const/4 v10, 0x1

    goto :goto_5f

    :cond_80
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferHttpSupported()Z

    move-result v4

    if-nez v4, :cond_7f

    goto :goto_5e

    .line 1030
    :cond_81
    if-eqz v40, :cond_4e

    const/4 v10, 0x1

    goto/16 :goto_3d

    .line 1035
    :cond_82
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e

    .line 1039
    :cond_83
    if-eqz v40, :cond_4f

    const/4 v10, 0x1

    goto/16 :goto_3f

    .line 1044
    :cond_84
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_40

    .line 1048
    :cond_85
    if-eqz v40, :cond_50

    const/4 v10, 0x1

    goto/16 :goto_41

    .line 1053
    :cond_86
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    .line 1057
    :cond_87
    if-eqz v40, :cond_51

    const/4 v10, 0x1

    goto/16 :goto_43

    .line 1062
    :cond_88
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_44

    .line 1066
    :cond_89
    if-eqz v40, :cond_52

    const/4 v10, 0x1

    goto/16 :goto_45

    .line 1071
    :cond_8a
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_46

    .line 1075
    :cond_8b
    if-eqz v40, :cond_53

    const/4 v10, 0x1

    goto/16 :goto_47

    .line 1080
    :cond_8c
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 1087
    .restart local v9    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8d
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_49

    .line 1093
    .restart local v34    # "extensionOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_8e
    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    check-cast v47, Landroid/content/ContentProviderOperation;

    .line 1094
    .restart local v47    # "op":Landroid/content/ContentProviderOperation;
    if-nez v47, :cond_8f

    .line 1092
    :goto_60
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_4a

    .line 1095
    :cond_8f
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 1107
    .restart local v14    # "modifyCapTimestamp":J
    :cond_90
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 1113
    .restart local v23    # "newFreeText":Ljava/lang/String;
    :cond_91
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4c

    .line 1118
    .restart local v24    # "oldFreeText":Ljava/lang/String;
    :cond_92
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4d

    :cond_93
    const/16 v25, 0x5

    .line 1120
    goto/16 :goto_4e

    .line 1126
    .restart local v57    # "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_94
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    check-cast v47, Landroid/content/ContentProviderOperation;

    .line 1127
    .restart local v47    # "op":Landroid/content/ContentProviderOperation;
    if-nez v47, :cond_95

    .line 1125
    :goto_61
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_4f

    .line 1128
    :cond_95
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 1139
    .restart local v53    # "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_96
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_51

    .line 1155
    .end local v6    # "rcsRawContactId":J
    .end local v9    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "modifyCapTimestamp":J
    .end local v23    # "newFreeText":Ljava/lang/String;
    .end local v24    # "oldFreeText":Ljava/lang/String;
    .end local v26    # "clientMode":I
    .end local v27    # "contactTypeOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v34    # "extensionOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v39    # "isIntegratedClient":Z
    .end local v41    # "j":I
    .end local v47    # "op":Landroid/content/ContentProviderOperation;
    .end local v53    # "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v54    # "rawContactId":J
    .end local v57    # "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_97
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "com.android.contacts"

    move-object/from16 v0, v48

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_23

    .line 1170
    :catch_4
    move-exception v30

    .line 1157
    .local v30, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_98

    .line 1162
    :goto_62
    new-instance v4, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1158
    :cond_98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Something went wrong when updating the database with the contact info"

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_62

    .line 1162
    .end local v30    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v29

    .line 1164
    .restart local v29    # "e":Landroid/content/OperationApplicationException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_99

    .line 1169
    :goto_63
    new-instance v4, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual/range {v29 .. v29}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1165
    :cond_99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Something went wrong when updating the database with the contact info"

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63
.end method

.method public setContactPhotoIcon(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "photoIcon"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 1372
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    const-string/jumbo v3, "myself"

    .line 1376
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1382
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v1

    .line 1383
    .local v1, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1385
    .local v0, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v2

    .line 1386
    .local v2, "presenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    invoke-virtual {v2, p2}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    .line 1387
    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V

    .line 1389
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1390
    return-void

    .line 1373
    .end local v0    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v1    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v2    # "presenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set photo-icon for contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1379
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public setContactSharingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 1604
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1610
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1612
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsValidNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1622
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactSharingStatus(Ljava/lang/String;)I

    move-result v0

    .line 1623
    .local v0, "currentStatus":I
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v3

    .line 1624
    .local v3, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    .local v2, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    if-ne v0, v9, :cond_8

    :cond_0
    const/4 v4, 0x5

    .line 1631
    if-eq v0, v4, :cond_a

    :cond_1
    const/4 v4, 0x6

    .line 1664
    if-eq v0, v4, :cond_f

    .line 1703
    :cond_2
    if-eq v0, v7, :cond_16

    .line 1737
    :cond_3
    if-eq v0, v8, :cond_1b

    .line 1815
    :cond_4
    :goto_1
    return-void

    .line 1605
    .end local v0    # "currentStatus":I
    .end local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set sharing status for contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1616
    :goto_2
    return-void

    .line 1614
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a RCS valid number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .restart local v0    # "currentStatus":I
    .restart local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_8
    const/4 v4, 0x7

    .line 1626
    if-ne v0, v4, :cond_0

    .line 1744
    if-ne v0, v9, :cond_1c

    :cond_9
    :try_start_1
    const-string/jumbo v4, "pending_out"

    .line 1751
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string/jumbo v4, "active"

    .line 1765
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string/jumbo v4, "pending"

    .line 1781
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string/jumbo v4, "blocked"

    .line 1795
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    .line 1799
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1800
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1801
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1805
    :goto_3
    return-void

    :cond_a
    const-string/jumbo v4, "terminated"

    .line 1635
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    const-string/jumbo v4, "active"

    .line 1647
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 1651
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1652
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1653
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1657
    :goto_4
    return-void

    .line 1635
    :cond_c
    if-eqz p3, :cond_b

    const-string/jumbo v4, "rejected"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    .line 1639
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1640
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1641
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1646
    :goto_5
    return-void

    .line 1642
    :cond_d
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"pending_out\" to \"terminated/rejected\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1644
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "=> Remove contact entry from EAB"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1814
    .end local v0    # "currentStatus":I
    .end local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :catch_0
    move-exception v1

    .line 1810
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_24

    .line 1813
    :goto_6
    new-instance v4, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1654
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentStatus":I
    .restart local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_e
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"pending_out\" to \"active\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string/jumbo v4, "active"

    .line 1666
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "terminated"

    .line 1675
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_10
    const-string/jumbo v4, "blocked"

    .line 1687
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    .line 1690
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1691
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1692
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1696
    :goto_7
    return-void

    :cond_11
    const/4 v4, 0x2

    .line 1668
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1669
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1670
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1674
    :goto_8
    return-void

    .line 1671
    :cond_12
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"pending\" to \"active\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 1675
    :cond_13
    if-eqz p3, :cond_10

    const-string/jumbo v4, "giveup"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    .line 1679
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1680
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1681
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1686
    :goto_9
    return-void

    .line 1682
    :cond_14
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"pending\" to \"terminated/giveup\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1684
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "=> Remove contact entry from EAB"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 1693
    :cond_15
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"pending\" to \"blocked\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    const-string/jumbo v4, "terminated"

    .line 1706
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    const-string/jumbo v4, "revoked"

    .line 1721
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 1723
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1724
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1725
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1730
    :goto_a
    return-void

    .line 1706
    :cond_18
    if-eqz p3, :cond_17

    const-string/jumbo v4, "rejected"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    .line 1711
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1712
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1713
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1718
    :goto_b
    return-void

    .line 1714
    :cond_19
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"active\" to \"terminated/rejected\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1716
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "=> Remove contact entry from EAB"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 1726
    :cond_1a
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has passed from \"active\" to \"revoked\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1728
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "=> Remove contact entry from EAB"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 1741
    :cond_1b
    return-void

    :cond_1c
    const/4 v4, 0x7

    .line 1744
    if-eq v0, v4, :cond_9

    goto/16 :goto_1

    :cond_1d
    const/4 v4, 0x5

    .line 1756
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1757
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1758
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1762
    :goto_c
    return-void

    .line 1759
    :cond_1e
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been added to the EAB with the \"pending_out\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    :cond_1f
    const/4 v4, 0x2

    .line 1772
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1773
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1774
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1778
    :goto_d
    return-void

    .line 1775
    :cond_20
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been added to the EAB with the \"active\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    const/4 v4, 0x6

    .line 1786
    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1787
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .line 1788
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_22

    .line 1792
    :goto_e
    return-void

    .line 1789
    :cond_22
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been added to the EAB with the \"pending\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 1802
    :cond_23
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been added to the EAB with the \"blocked\" state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 1811
    .end local v0    # "currentStatus":I
    .end local v2    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v3    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_24
    iget-object v4, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Internal exception"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method public setMyInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V
    .locals 22
    .param p1, "newPresenceInfo"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdForMe()J

    move-result-wide v4

    .line 416
    .local v4, "myRawContactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getMyPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v17

    .line 418
    .local v17, "oldPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v6, "myself"

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyCapabilityTimestampForContact(JLjava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v18

    .line 423
    .local v18, "op":Landroid/content/ContentProviderOperation;
    if-nez v18, :cond_2

    :goto_1
    const/4 v15, 0x0

    .line 429
    .local v15, "newAvailability":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOnline()Z

    move-result v3

    if-nez v3, :cond_3

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOffline()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    const/16 v16, 0x0

    .line 437
    .local v16, "oldAvailability":I
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOnline()Z

    move-result v3

    if-nez v3, :cond_5

    .line 439
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->isOffline()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_3
    const-string/jumbo v6, "myself"

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, v17

    .line 444
    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyPresenceForContact(JLjava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/util/ArrayList;

    move-result-object v20

    .local v20, "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 446
    .local v14, "i":I
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lt v14, v3, :cond_7

    const-string/jumbo v6, "myself"

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getPresenceStatus(I)I

    move-result v11

    move-object/from16 v3, p0

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyContactRegistrationState(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v21

    .local v21, "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 458
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-lt v14, v3, :cond_9

    .line 465
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 485
    :goto_6
    return-void

    .line 408
    .end local v4    # "myRawContactId":J
    .end local v14    # "i":I
    .end local v15    # "newAvailability":I
    .end local v16    # "oldAvailability":I
    .end local v17    # "oldPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .end local v18    # "op":Landroid/content/ContentProviderOperation;
    .end local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v20    # "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v21    # "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Set my presence info"

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_1
    return-void

    .line 424
    .restart local v4    # "myRawContactId":J
    .restart local v17    # "oldPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .restart local v18    # "op":Landroid/content/ContentProviderOperation;
    .restart local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v15    # "newAvailability":I
    :cond_3
    const/4 v15, 0x1

    .line 430
    goto :goto_2

    :cond_4
    const/4 v15, 0x2

    .line 432
    goto :goto_2

    .restart local v16    # "oldAvailability":I
    :cond_5
    const/16 v16, 0x1

    .line 438
    goto :goto_3

    :cond_6
    const/16 v16, 0x2

    .line 440
    goto :goto_3

    .line 447
    .restart local v14    # "i":I
    .restart local v20    # "presenceOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_7
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "op":Landroid/content/ContentProviderOperation;
    check-cast v18, Landroid/content/ContentProviderOperation;

    .line 448
    .restart local v18    # "op":Landroid/content/ContentProviderOperation;
    if-nez v18, :cond_8

    .line 446
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 449
    :cond_8
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 459
    .restart local v21    # "registrationOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_9
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "op":Landroid/content/ContentProviderOperation;
    check-cast v18, Landroid/content/ContentProviderOperation;

    .line 460
    .restart local v18    # "op":Landroid/content/ContentProviderOperation;
    if-nez v18, :cond_a

    .line 458
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 461
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 468
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_6

    .line 483
    :catch_0
    move-exception v13

    .line 470
    .local v13, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_c

    .line 475
    :goto_9
    new-instance v3, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v13}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 471
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Something went wrong when updating the database with the contact info"

    invoke-virtual {v3, v6, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 475
    .end local v13    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 477
    .local v12, "e":Landroid/content/OperationApplicationException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_d

    .line 482
    :goto_a
    new-instance v3, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 478
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Something went wrong when updating the database with the contact info"

    invoke-virtual {v3, v6, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public setMyPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V
    .locals 3
    .param p1, "photo"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "myself"

    .line 503
    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactPhotoIcon(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    return-void

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Set my photo-icon"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_1
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Internal exception"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setStatusUpdateTable(JI)V
    .locals 13
    .param p1, "rawContactId"    # J
    .param p3, "availability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1258
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v6

    .line 1259
    .local v6, "clientMode":I
    if-eq v1, v6, :cond_1

    move v8, v0

    .line 1260
    .local v8, "isIntegratedClient":Z
    :goto_0
    if-nez v8, :cond_2

    :cond_0
    const/4 v10, 0x2

    .line 1262
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v10, "_id"

    aput-object v10, v2, v0

    const-string/jumbo v10, "raw_contact_id"

    aput-object v10, v2, v1

    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "raw_contact_id=?"

    .line 1266
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1269
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1271
    .local v7, "cur":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v7, :cond_3

    .line 1317
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_1
    return-void

    .end local v8    # "isIntegratedClient":Z
    :cond_1
    move v8, v1

    .line 1259
    goto :goto_0

    .line 1260
    .restart local v8    # "isIntegratedClient":Z
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 1274
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cur":Landroid/database/Cursor;
    .restart local v9    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 1313
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1275
    :cond_4
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "presence_data_id"

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "status"

    const-string/jumbo v5, " "

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v5, "status_res_package"

    if-nez v8, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "status_label"

    const v5, 0x7f05002c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "protocol"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "custom_protocol"

    const-string/jumbo v5, " "

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "status_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1310
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 1275
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, " "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1314
    :catchall_0
    move-exception v0

    .line 1313
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public unblockContact(Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1946
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v2

    .line 1947
    .local v2, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .local v1, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    const/4 v3, 0x0

    .line 1948
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1949
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    return-void

    .line 1941
    .end local v1    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v2    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unblock contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1955
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1954
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1952
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Internal exception"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public unrevokeContact(Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
        }
    .end annotation

    .prologue
    .line 1891
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1897
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v2

    .line 1898
    .local v2, "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;-><init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V

    .local v1, "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    const/4 v3, 0x0

    .line 1899
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->setRcsStatus(I)V

    .line 1900
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactInfo(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    return-void

    .line 1892
    .end local v1    # "newInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v2    # "oldInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrevoke contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1906
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1905
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1903
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Internal exception"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public updateContactSavedStatusToTrue(Ljava/lang/String;)V
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1355
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "saved_in_addressbook"

    .line 1356
    sget-object v2, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->TRUE_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/provider/eab/RichAddressBookData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "contact_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1361
    return-void
.end method
