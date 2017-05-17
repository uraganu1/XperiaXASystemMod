.class public Lcom/sonyericsson/android/socialphonebook/AttachImage;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "AttachImage.java"


# static fields
.field private static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field private static final KEY_CROP_PHOTO_URI:Ljava/lang/String; = "crop_photo_uri"

.field private static final RAW_CONTACT_URIS_KEY:Ljava/lang/String; = "raw_contact_uris"

.field private static final REQUEST_CROP_PHOTO:I = 0x2

.field private static final REQUEST_PICK_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AttachImage"


# instance fields
.field private mContactId:Ljava/lang/Long;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCropPhotoUri:Landroid/net/Uri;

.field private mPhotoDim:I

.field private mRawContactIds:[Ljava/lang/Long;

.field private mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method

.method private createRawContactDisplayPhotoUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 408
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "display_photo"

    .line 407
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private deleteTempPhoto()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mTempPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    :cond_0
    return-void
.end method

.method private hasSuperPrimaryPhoto(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "rawContactDataUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 453
    const/4 v7, 0x0

    .line 455
    .local v7, "isSuperPrimary":Z
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "mimetype"

    aput-object v0, v2, v1

    const-string/jumbo v0, "is_super_primary"

    aput-object v0, v2, v8

    .line 456
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=?"

    .line 457
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    aput-object v0, v4, v1

    .line 459
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 462
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 464
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string/jumbo v0, "is_super_primary"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    const/4 v7, 0x1

    .line 468
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_1
    return v7

    .line 465
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    throw v0
.end method

.method private insertPhoto(Landroid/content/ContentValues;Ljava/lang/Long;Z)V
    .locals 12
    .param p1, "imageValues"    # Landroid/content/ContentValues;
    .param p2, "rawContactId"    # Ljava/lang/Long;
    .param p3, "assertAccount"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 363
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 364
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 363
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 366
    .local v5, "rawContactUri":Landroid/net/Uri;
    const-string/jumbo v6, "data"

    .line 365
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 369
    .local v4, "rawContactDataUri":Landroid/net/Uri;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 374
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 375
    const-string/jumbo v7, "mimetype=?"

    new-array v8, v11, [Ljava/lang/String;

    .line 376
    const-string/jumbo v9, "vnd.android.cursor.item/photo"

    aput-object v9, v8, v10

    .line 374
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "com.android.contacts"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 387
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->createRawContactDisplayPhotoUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 388
    .local v3, "outputUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-static {p0, v6, v3, v7}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v3    # "outputUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_1

    .line 395
    invoke-direct {p0, p1, v4, v10, p2}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;ZLjava/lang/Long;)V

    goto :goto_0

    .line 397
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Problem inserting photo into raw_contacts/data"

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 389
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Problem querying raw_contacts/data"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private insertPhotoForJointContact(Landroid/content/ContentValues;)V
    .locals 20
    .param p1, "imageValues"    # Landroid/content/ContentValues;

    .prologue
    .line 302
    const/16 v16, 0x0

    .line 303
    .local v16, "superPrimaryFound":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    const/4 v2, 0x0

    array-length v6, v5

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v15, v5, v2

    .line 304
    .local v15, "rawContactId":Ljava/lang/Long;
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 305
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 304
    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 307
    .local v3, "rawContactUri":Landroid/net/Uri;
    const-string/jumbo v7, "data"

    .line 306
    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 309
    .local v14, "rawContactDataUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->hasSuperPrimaryPhoto(Landroid/net/Uri;)Z

    move-result v11

    .line 311
    .local v11, "isSuperPrimary":Z
    if-eqz v11, :cond_4

    .line 312
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->insertPhoto(Landroid/content/ContentValues;Ljava/lang/Long;Z)V

    .line 313
    const/16 v16, 0x1

    .line 320
    .end local v3    # "rawContactUri":Landroid/net/Uri;
    .end local v11    # "isSuperPrimary":Z
    .end local v14    # "rawContactDataUri":Landroid/net/Uri;
    .end local v15    # "rawContactId":Ljava/lang/Long;
    :cond_0
    if-nez v16, :cond_3

    .line 322
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "name_raw_contact_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 325
    .local v4, "projection":[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContactId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 327
    .local v9, "contactUri":Landroid/net/Uri;
    const-string/jumbo v2, "data"

    .line 326
    invoke-static {v9, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 328
    .restart local v3    # "rawContactUri":Landroid/net/Uri;
    const-wide/16 v12, -0x1

    .line 329
    .local v12, "nameRawContactId":J
    const/4 v8, 0x0

    .line 332
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 333
    const/4 v7, 0x0

    .line 332
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 335
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 341
    :cond_1
    if-eqz v8, :cond_2

    .line 342
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v2, v12, v6

    if-eqz v2, :cond_3

    .line 347
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->insertPhoto(Landroid/content/ContentValues;Ljava/lang/Long;Z)V

    .line 299
    .end local v3    # "rawContactUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "contactUri":Landroid/net/Uri;
    .end local v12    # "nameRawContactId":J
    :cond_3
    return-void

    .line 303
    .restart local v3    # "rawContactUri":Landroid/net/Uri;
    .restart local v11    # "isSuperPrimary":Z
    .restart local v14    # "rawContactDataUri":Landroid/net/Uri;
    .restart local v15    # "rawContactId":Ljava/lang/Long;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 338
    .end local v11    # "isSuperPrimary":Z
    .end local v14    # "rawContactDataUri":Landroid/net/Uri;
    .end local v15    # "rawContactId":Ljava/lang/Long;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v9    # "contactUri":Landroid/net/Uri;
    .restart local v12    # "nameRawContactId":J
    :catch_0
    move-exception v10

    .line 339
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "AttachImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to insert picture by name raw contact id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    if-eqz v8, :cond_2

    .line 342
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 340
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 341
    if-eqz v8, :cond_5

    .line 342
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_5
    throw v2
.end method

.method private isContactPhotoReplaceable(J)Z
    .locals 27
    .param p1, "contactId"    # J

    .prologue
    .line 485
    const/16 v21, 0x0

    .line 487
    .local v21, "isContactPhotoReplacable":Z
    const-wide/16 v16, 0x0

    .line 488
    .local v16, "contactPhotoId":J
    const-wide/16 v22, 0x0

    .line 490
    .local v22, "nameRawContactId":J
    const/16 v24, 0x0

    .line 492
    .local v24, "type":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 493
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 495
    .local v3, "contactUri":Landroid/net/Uri;
    const-string/jumbo v2, "data"

    .line 494
    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 497
    const/16 v25, 0x0

    const/4 v15, 0x0

    .local v15, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 498
    const-string/jumbo v6, "photo_id"

    const/4 v8, 0x0

    aput-object v6, v4, v8

    const-string/jumbo v6, "name_raw_contact_id"

    const/4 v8, 0x1

    aput-object v6, v4, v8

    .line 499
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 497
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 501
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_17

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 502
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 506
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-nez v2, :cond_c

    .line 507
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 509
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 512
    .local v5, "rawContactUri":Landroid/net/Uri;
    const/4 v10, 0x0

    const/16 v18, 0x0

    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .line 513
    const-string/jumbo v2, "account_type"

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const-string/jumbo v2, "sync1"

    const/4 v8, 0x1

    aput-object v2, v6, v8

    .line 514
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 512
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 516
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 518
    const-string/jumbo v2, "sync1"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 517
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->isChameleonPreloadedContact(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-eqz v2, :cond_6

    .line 524
    if-eqz v18, :cond_0

    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    if-eqz v10, :cond_3

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 555
    .end local v5    # "rawContactUri":Landroid/net/Uri;
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v24    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v26, v4

    move-object v4, v2

    move-object/from16 v2, v26

    :goto_1
    if-eqz v15, :cond_1

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_1a

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 552
    :catch_1
    move-exception v20

    .line 553
    .local v20, "e":Ljava/lang/Exception;
    const/16 v21, 0x0

    .line 554
    const-string/jumbo v2, "AttachImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error happend when decide whether photo is replacable "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_2
    return v21

    .line 524
    .restart local v5    # "rawContactUri":Landroid/net/Uri;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v24    # "type":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_0

    .line 519
    :cond_3
    const/4 v2, 0x0

    .line 555
    if-eqz v15, :cond_4

    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_3
    if-eqz v25, :cond_5

    :try_start_8
    throw v25
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_3
    move-exception v25

    goto :goto_3

    .line 519
    :cond_5
    return v2

    .line 522
    :cond_6
    :try_start_9
    const-string/jumbo v2, "account_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 521
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-object v24

    .line 524
    .end local v24    # "type":Ljava/lang/String;
    :cond_7
    if-eqz v18, :cond_8

    :try_start_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_8
    :goto_4
    if-eqz v10, :cond_12

    :try_start_b
    throw v10
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 555
    .end local v5    # "rawContactUri":Landroid/net/Uri;
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v18    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object/from16 v4, v25

    goto :goto_1

    .line 524
    .restart local v5    # "rawContactUri":Landroid/net/Uri;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :catch_4
    move-exception v10

    goto :goto_4

    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v24    # "type":Ljava/lang/String;
    :catch_5
    move-exception v2

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v4

    move-object/from16 v26, v4

    move-object v4, v2

    move-object/from16 v2, v26

    :goto_5
    if-eqz v18, :cond_9

    :try_start_d
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_9
    :goto_6
    if-eqz v4, :cond_b

    :try_start_e
    throw v4

    :catch_6
    move-exception v6

    if-nez v4, :cond_a

    move-object v4, v6

    goto :goto_6

    :cond_a
    if-eq v4, v6, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    throw v2

    .line 527
    .end local v5    # "rawContactUri":Landroid/net/Uri;
    :cond_c
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v7

    .line 529
    .local v7, "dataUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/16 v19, 0x0

    .local v19, "dc":Landroid/database/Cursor;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 530
    const-string/jumbo v2, "account_type"

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 531
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 529
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 533
    .local v19, "dc":Landroid/database/Cursor;
    if-eqz v19, :cond_d

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 534
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result-object v24

    .line 536
    .end local v24    # "type":Ljava/lang/String;
    :cond_d
    if-eqz v19, :cond_e

    :try_start_10
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_e
    :goto_7
    if-eqz v4, :cond_12

    :try_start_11
    throw v4
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_7
    move-exception v4

    goto :goto_7

    .end local v19    # "dc":Landroid/database/Cursor;
    .restart local v24    # "type":Ljava/lang/String;
    :catch_8
    move-exception v2

    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_3
    move-exception v4

    move-object/from16 v26, v4

    move-object v4, v2

    move-object/from16 v2, v26

    :goto_8
    if-eqz v19, :cond_f

    :try_start_13
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_f
    :goto_9
    if-eqz v4, :cond_11

    :try_start_14
    throw v4

    :catch_9
    move-exception v6

    if-nez v4, :cond_10

    move-object v4, v6

    goto :goto_9

    :cond_10
    if-eq v4, v6, :cond_f

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_11
    throw v2

    .line 539
    .end local v7    # "dataUri":Landroid/net/Uri;
    .end local v24    # "type":Ljava/lang/String;
    :cond_12
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 540
    const-string/jumbo v2, "AttachImage"

    const-string/jumbo v4, "Unable to get account type"

    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 541
    const/4 v2, 0x0

    .line 555
    if-eqz v15, :cond_13

    :try_start_15
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :cond_13
    :goto_a
    if-eqz v25, :cond_14

    :try_start_16
    throw v25
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    :catch_a
    move-exception v25

    goto :goto_a

    .line 541
    :cond_14
    return v2

    .line 544
    :cond_15
    :try_start_17
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v14

    .line 545
    .local v14, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "account$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 546
    .local v12, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-eqz v24, :cond_16

    iget-object v2, v12, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v2

    if-eqz v2, :cond_16

    .line 547
    const/16 v21, 0x1

    .line 555
    .end local v12    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v13    # "account$iterator":Ljava/util/Iterator;
    .end local v14    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :cond_17
    if-eqz v15, :cond_18

    :try_start_18
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    :cond_18
    :goto_b
    if-eqz v25, :cond_2

    :try_start_19
    throw v25

    :catch_b
    move-exception v25

    goto :goto_b

    .end local v15    # "c":Landroid/database/Cursor;
    :catch_c
    move-exception v6

    if-nez v4, :cond_19

    move-object v4, v6

    goto/16 :goto_2

    :cond_19
    if-eq v4, v6, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_1a
    throw v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 536
    .restart local v7    # "dataUri":Landroid/net/Uri;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v24    # "type":Ljava/lang/String;
    :catchall_4
    move-exception v2

    goto :goto_8

    .line 524
    .end local v7    # "dataUri":Landroid/net/Uri;
    .restart local v5    # "rawContactUri":Landroid/net/Uri;
    :catchall_5
    move-exception v2

    move-object v4, v10

    goto/16 :goto_5
.end method

.method private static toClassArray([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "in"    # [J

    .prologue
    const/4 v2, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 169
    return-object v2

    .line 171
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 172
    .local v1, "out":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 173
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-object v1
.end method

.method private static toPrimativeArray([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "in"    # [Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 158
    return-object v2

    .line 160
    :cond_0
    array-length v2, p0

    new-array v1, v2, [J

    .line 161
    .local v1, "out":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 162
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-object v1
.end method

.method private updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;ZLjava/lang/Long;)V
    .locals 10
    .param p1, "imageValues"    # Landroid/content/ContentValues;
    .param p2, "rawContactDataUri"    # Landroid/net/Uri;
    .param p3, "allowInsert"    # Z
    .param p4, "rawContactId"    # Ljava/lang/Long;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v4, "mimetype"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 426
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 427
    const-string/jumbo v5, "mimetype=?"

    new-array v6, v8, [Ljava/lang/String;

    .line 428
    const-string/jumbo v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v9

    .line 426
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "mimetype=?"

    new-array v6, v8, [Ljava/lang/String;

    .line 433
    const-string/jumbo v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v9

    .line 432
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "com.android.contacts"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 438
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->createRawContactDisplayPhotoUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 439
    .local v3, "outputUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-static {p0, v4, v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v3    # "outputUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_0

    .line 445
    invoke-direct {p0, p1, p4, v9}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->insertPhoto(Landroid/content/ContentValues;Ljava/lang/Long;Z)V

    goto :goto_0

    .line 447
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Problem inserting photo raw_contacts/data"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 440
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 441
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Problem querying raw_contacts/data"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    .line 180
    const-string/jumbo v19, "AttachImage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onActivityResult req:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " res:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " data:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v19, -0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->deleteTempPhoto()V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->finish()V

    .line 185
    return-void

    .line 188
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 189
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 190
    const/4 v15, 0x0

    .line 192
    .local v15, "rawContactIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 194
    .local v6, "contactId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->isContactPhotoReplaceable(J)Z

    move-result v19

    if-nez v19, :cond_1

    .line 195
    const v19, 0x7f090231

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->finish()V

    .line 197
    return-void

    .line 200
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContactId:Ljava/lang/Long;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    .line 201
    move-object/from16 v0, v19

    invoke-static {v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v15

    .line 203
    .local v15, "rawContactIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v15, :cond_2

    .line 204
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 205
    .local v13, "length":I
    if-lez v13, :cond_2

    .line 206
    new-array v0, v13, [Ljava/lang/Long;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/Long;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v6    # "contactId":J
    .end local v13    # "length":I
    .end local v15    # "rawContactIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 215
    if-nez v15, :cond_4

    .line 217
    :cond_3
    const v19, 0x7f090094

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->finish()V

    .line 219
    return-void

    .line 209
    :catch_0
    move-exception v10

    .line 210
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "AttachImage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to solve contact ID "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    .line 214
    if-nez v19, :cond_3

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 224
    .local v14, "myIntent":Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v19, "com.android.camera.action.CROP"

    .line 225
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 224
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v12, "intent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mTempPhotoUri:Landroid/net/Uri;

    .line 227
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mTempPhotoUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    .line 228
    const-string/jumbo v19, "mimeType"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mTempPhotoUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mimeType"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mPhotoDim:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v12, v0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;I)V

    .line 235
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;-><init>(Lcom/sonyericsson/android/socialphonebook/AttachImage;Landroid/content/Intent;)V

    .line 245
    .local v8, "cropPhotoRunnable":Ljava/lang/Runnable;
    new-instance v19, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mTempPhotoUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 245
    invoke-virtual/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    .end local v8    # "cropPhotoRunnable":Ljava/lang/Runnable;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "myIntent":Landroid/content/Intent;
    :cond_6
    :goto_1
    return-void

    .line 247
    :cond_7
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->deleteTempPhoto()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContactId:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 253
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 258
    .local v18, "uri":Landroid/net/Uri;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v17

    .line 259
    .local v17, "size":I
    const/4 v4, 0x0

    .line 261
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 266
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v4, :cond_a

    .line 267
    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 268
    .local v16, "scaled":Landroid/graphics/Bitmap;
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 269
    .local v5, "compressed":[B
    if-nez v5, :cond_9

    .line 270
    const-string/jumbo v19, "AttachImage"

    const-string/jumbo v20, "could not create scaled and compressed Bitmap"

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 256
    .end local v5    # "compressed":[B
    .end local v16    # "scaled":Landroid/graphics/Bitmap;
    .end local v17    # "size":I
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .restart local v18    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 262
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "size":I
    :catch_1
    move-exception v9

    .line 263
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v19, "AttachImage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "File not found "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 274
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "compressed":[B
    .restart local v16    # "scaled":Landroid/graphics/Bitmap;
    :cond_9
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v11, "imageValues":Landroid/content/ContentValues;
    const-string/jumbo v19, "data15"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->insertPhotoForJointContact(Landroid/content/ContentValues;)V

    .line 289
    .end local v5    # "compressed":[B
    .end local v11    # "imageValues":Landroid/content/ContentValues;
    .end local v16    # "scaled":Landroid/graphics/Bitmap;
    .end local v17    # "size":I
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->finish()V

    goto/16 :goto_1

    .line 282
    .restart local v5    # "compressed":[B
    .restart local v11    # "imageValues":Landroid/content/ContentValues;
    .restart local v16    # "scaled":Landroid/graphics/Bitmap;
    .restart local v17    # "size":I
    .restart local v18    # "uri":Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v11, v1, v2}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->insertPhoto(Landroid/content/ContentValues;Ljava/lang/Long;Z)V

    goto :goto_4

    .line 285
    :cond_c
    const-string/jumbo v19, "AttachImage"

    const-string/jumbo v20, "Attach image to empty raw contact"

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    return-void

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    .line 107
    const-string/jumbo v1, "raw_contact_uris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->toClassArray([J)[Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 108
    const-string/jumbo v1, "contact_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContactId:Ljava/lang/Long;

    .line 109
    const-string/jumbo v1, "crop_photo_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPhotoDimension(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mPhotoDim:I

    .line 96
    return-void

    .line 111
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "disable_sim_account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onResume()V

    .line 151
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 148
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "raw_contact_uris"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->toPrimativeArray([Ljava/lang/Long;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContactId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 132
    const-string/jumbo v0, "contact_id"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mContactId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 134
    :cond_1
    const-string/jumbo v0, "crop_photo_uri"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage;->mCropPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onStart()V

    .line 142
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 139
    :cond_0
    return-void
.end method
