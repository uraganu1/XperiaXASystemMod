.class public Lcom/android/contacts/common/vcard/ExportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ExportProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SHIFT_JIS_ENCODING:Ljava/lang/String; = "SHIFT_JIS"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

.field private mExportStarted:Z

.field private final mJobId:I

.field private mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private mLocaleProfileExport:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 1
    .param p1, "service"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "exportRequest"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p3, "jobId"    # I
    .param p4, "callingActivity"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 78
    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 79
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    .line 80
    iput p3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 81
    iput-object p5, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .line 76
    return-void
.end method

.method private getComposer(ILjava/lang/String;)Lcom/sonymobile/android/vcard/VCardComposer;
    .locals 16
    .param p1, "vcardType"    # I
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v2, Lcom/sonymobile/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 250
    .local v2, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    sget-object v8, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 251
    .local v8, "contentUriForRawContactsEntity":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 252
    .local v12, "initiated":Z
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 253
    const-string/jumbo v3, "_id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 255
    .local v4, "columns":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v13, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "in_visible_group = 1 "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v3, v3, Lcom/android/contacts/common/vcard/ExportRequest;->contactIds:[J

    if-nez v3, :cond_1

    .line 258
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 259
    const/4 v7, 0x0

    .line 258
    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v12

    .line 260
    .local v12, "initiated":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    .line 287
    :goto_0
    if-nez v12, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    if-nez v3, :cond_0

    .line 289
    invoke-virtual {v2}, Lcom/sonymobile/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "errorReason":Ljava/lang/String;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initialization of vCard composer failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 292
    .local v15, "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 293
    const/4 v6, 0x0

    aput-object v15, v5, v6

    const v6, 0x7f09016d

    .line 292
    invoke-virtual {v3, v6, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 294
    .local v14, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    invoke-interface {v3, v5, v14}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V

    .line 296
    .end local v9    # "errorReason":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "translatedErrorReason":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 262
    .local v12, "initiated":Z
    :cond_1
    const-string/jumbo v3, " AND "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v3, "_id"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string/jumbo v3, " IN ("

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v5, v3, Lcom/android/contacts/common/vcard/ExportRequest;->contactIds:[J

    const/4 v3, 0x0

    array-length v6, v5

    :goto_1
    if-ge v3, v6, :cond_3

    aget-wide v10, v5, v3

    .line 267
    .local v10, "id":J
    invoke-static {v10, v11}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 268
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->tryAppendLocalProfile()V

    .line 271
    :cond_2
    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 275
    .end local v10    # "id":J
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    const-string/jumbo v3, ")"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v3, " AND "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v3, "_id"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string/jumbo v3, " NOT IN ("

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->getExcludeSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo v3, ")"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 285
    const/4 v7, 0x0

    .line 284
    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v12

    .local v12, "initiated":Z
    goto/16 :goto_0

    .line 298
    :cond_4
    return-object v2
.end method

.method private getComposerForLocaleProfile(ILjava/io/Writer;Ljava/lang/String;)Z
    .locals 11
    .param p1, "vcardType"    # I
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/sonymobile/android/vcard/VCardComposer;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, p3, v3}, Lcom/sonymobile/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 311
    .local v0, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 312
    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 314
    .local v2, "columns":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 315
    sget-object v6, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 314
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    .line 317
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 331
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 318
    :catch_0
    move-exception v7

    .line 319
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "errorReason":Ljava/lang/String;
    sget-object v1, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to read a contact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v8}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "translatedErrorReason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 323
    const/4 v4, 0x0

    aput-object v10, v3, v4

    const v4, 0x7f090170

    .line 322
    invoke-virtual {v1, v4, v3}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-interface {v1, v3, v4, v9}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFinished(Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    const/4 v1, 0x0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 325
    :cond_1
    return v1

    .line 326
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "errorReason":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "translatedErrorReason":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 327
    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 326
    :cond_2
    throw v1
.end method

.method private getExcludeSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT contacts._id FROM contacts,raw_contacts JOIN accounts ON account_id=accounts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string/jumbo v1, " WHERE contacts.name_raw_contact_id = raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v1, " AND (accounts.account_type = \'com.sonyericsson.sdncontacts\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string/jumbo v1, " OR raw_contacts.is_restricted!=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private runInternal()V
    .locals 26

    .prologue
    .line 119
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "vCard export (id: %d) has started."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v5, v25

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v17, v0

    .line 121
    .local v17, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    const/4 v11, 0x0

    .line 122
    .local v11, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    const/16 v22, 0x0

    .line 123
    .local v22, "writer":Ljava/io/Writer;
    const/16 v18, 0x0

    .line 125
    .local v18, "successful":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Export request is cancelled before handling the request"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 127
    return-void

    .line 129
    :cond_0
    :try_start_1
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .local v6, "uri":Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 142
    .local v16, "outputStream":Ljava/io/OutputStream;
    :try_start_3
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 144
    .local v15, "exportType":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v21

    .line 153
    .local v21, "vcardType":I
    :goto_0
    invoke-static/range {v21 .. v21}, Lcom/sonymobile/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 154
    const-string/jumbo v10, "SHIFT_JIS"

    .line 155
    .local v10, "charsetName":Ljava/lang/String;
    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    .line 161
    .end local v10    # "charsetName":Ljava/lang/String;
    .local v9, "charset":Ljava/nio/charset/Charset;
    :goto_1
    new-instance v23, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .local v23, "writer":Ljava/io/Writer;
    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v10}, Lcom/android/contacts/common/vcard/ExportProcessor;->getComposer(ILjava/lang/String;)Lcom/sonymobile/android/vcard/VCardComposer;

    .end local v22    # "writer":Ljava/io/Writer;
    move-result-object v11

    .line 163
    .local v11, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    if-eqz v3, :cond_8

    .line 165
    :cond_1
    const/4 v8, 0x0

    .line 167
    .local v8, "total":I
    if-eqz v11, :cond_2

    .line 168
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->getCount()I

    move-result v8

    .line 171
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    if-eqz v3, :cond_3

    .line 172
    add-int/lit8 v8, v8, 0x1

    .line 175
    :cond_3
    if-nez v8, :cond_b

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v4, 0x7f09016f

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 178
    .local v19, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    if-eqz v11, :cond_4

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_4
    if-eqz v23, :cond_5

    .line 238
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 243
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 179
    return-void

    .line 133
    .end local v8    # "total":I
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v15    # "exportType":Ljava/lang/String;
    .end local v16    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "vcardType":I
    .end local v23    # "writer":Ljava/io/Writer;
    .local v11, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    .restart local v22    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v12

    .line 134
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "FileNotFoundException thrown"

    invoke-static {v3, v4, v12}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v24, 0x0

    aput-object v5, v4, v24

    const v5, 0x7f090181

    .line 136
    invoke-virtual {v3, v5, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 138
    .local v14, "errorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-interface {v3, v4, v5, v14}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFinished(Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 139
    return-void

    .line 148
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "errorReason":Ljava/lang/String;
    .restart local v15    # "exportType":Ljava/lang/String;
    .restart local v16    # "outputStream":Ljava/io/OutputStream;
    :cond_6
    :try_start_7
    invoke-static {v15}, Lcom/sonymobile/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v21

    .restart local v21    # "vcardType":I
    goto/16 :goto_0

    .line 157
    :cond_7
    const/4 v10, 0x0

    .line 158
    .local v10, "charsetName":Ljava/lang/String;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    goto/16 :goto_1

    .line 233
    .end local v10    # "charsetName":Ljava/lang/String;
    .end local v22    # "writer":Ljava/io/Writer;
    .local v11, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    .restart local v23    # "writer":Ljava/io/Writer;
    :cond_8
    if-eqz v11, :cond_9

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_9
    if-eqz v23, :cond_a

    .line 238
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 243
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 163
    return-void

    .line 239
    :catch_1
    move-exception v13

    .line 240
    .local v13, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 239
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v8    # "total":I
    .restart local v19    # "title":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 240
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    .end local v13    # "e":Ljava/io/IOException;
    .end local v19    # "title":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x1

    .line 184
    .local v7, "current":I
    if-eqz v11, :cond_11

    .line 185
    :goto_4
    :try_start_9
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_11

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 187
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Export request is cancelled during composing vCard"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 233
    if-eqz v11, :cond_c

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_c
    if-eqz v23, :cond_d

    .line 238
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 243
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 188
    return-void

    .line 239
    :catch_3
    move-exception v13

    .line 240
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 191
    .end local v13    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_b
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 207
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-interface/range {v3 .. v8}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportParsed(Lcom/android/contacts/common/vcard/ExportRequest;ILandroid/net/Uri;II)V

    .line 208
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 192
    :catch_4
    move-exception v13

    .line 193
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v14

    .line 194
    .restart local v14    # "errorReason":Ljava/lang/String;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read a contact: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 196
    .local v20, "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 198
    const/4 v5, 0x0

    aput-object v20, v4, v5

    .line 197
    const v5, 0x7f090170

    .line 196
    invoke-virtual {v3, v5, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 199
    .restart local v19    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFinished(Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 233
    if-eqz v11, :cond_f

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_f
    if-eqz v23, :cond_10

    .line 238
    :try_start_d
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 243
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 200
    return-void

    .line 239
    :catch_5
    move-exception v13

    .line 240
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 212
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "errorReason":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "translatedErrorReason":Ljava/lang/String;
    :cond_11
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    if-eqz v3, :cond_15

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v10}, Lcom/android/contacts/common/vcard/ExportProcessor;->getComposerForLocaleProfile(ILjava/io/Writer;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v3

    if-nez v3, :cond_14

    .line 233
    if-eqz v11, :cond_12

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_12
    if-eqz v23, :cond_13

    .line 238
    :try_start_f
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 243
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 214
    return-void

    .line 239
    :catch_6
    move-exception v13

    .line 240
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 216
    .end local v13    # "e":Ljava/io/IOException;
    :cond_14
    const/4 v3, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-interface/range {v3 .. v8}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportParsed(Lcom/android/contacts/common/vcard/ExportRequest;ILandroid/net/Uri;II)V

    .line 218
    add-int/lit8 v7, v7, 0x1

    .line 221
    :cond_15
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Successfully finished exporting vCard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ask MediaScanner to scan the file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 225
    const/16 v18, 0x1

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v4, 0x7f090171

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 227
    .restart local v19    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFinished(Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 233
    if-eqz v11, :cond_16

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_16
    if-eqz v23, :cond_17

    .line 238
    :try_start_11
    invoke-virtual/range {v23 .. v23}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 243
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v22, v23

    .line 118
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "current":I
    .end local v8    # "total":I
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v11    # "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    .end local v15    # "exportType":Ljava/lang/String;
    .end local v16    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "vcardType":I
    .end local v23    # "writer":Ljava/io/Writer;
    :goto_9
    return-void

    .line 239
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "current":I
    .restart local v8    # "total":I
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    .restart local v11    # "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    .restart local v15    # "exportType":Ljava/lang/String;
    .restart local v16    # "outputStream":Ljava/io/OutputStream;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v21    # "vcardType":I
    .restart local v23    # "writer":Ljava/io/Writer;
    :catch_7
    move-exception v13

    .line 240
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 228
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "current":I
    .end local v8    # "total":I
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "exportType":Ljava/lang/String;
    .end local v16    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "vcardType":I
    .end local v23    # "writer":Ljava/io/Writer;
    .local v11, "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    .restart local v22    # "writer":Ljava/io/Writer;
    :catch_8
    move-exception v12

    .line 229
    .end local v11    # "composer":Lcom/sonymobile/android/vcard/VCardComposer;
    .end local v22    # "writer":Ljava/io/Writer;
    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    :goto_a
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 230
    const v24, 0x7f0902a9

    .line 229
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 231
    const/16 v18, 0x0

    .line 233
    if-eqz v11, :cond_18

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_18
    if-eqz v22, :cond_19

    .line 238
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 243
    :cond_19
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto :goto_9

    .line 239
    :catch_9
    move-exception v13

    .line 240
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 232
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 233
    :goto_c
    if-eqz v11, :cond_1a

    .line 234
    invoke-virtual {v11}, Lcom/sonymobile/android/vcard/VCardComposer;->terminate()V

    .line 236
    :cond_1a
    if-eqz v22, :cond_1b

    .line 238
    :try_start_14
    invoke-virtual/range {v22 .. v22}, Ljava/io/Writer;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 243
    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 232
    throw v3

    .line 239
    :catch_a
    move-exception v13

    .line 240
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "IOException is thrown during close(). Ignored. "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 232
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    .restart local v15    # "exportType":Ljava/lang/String;
    .restart local v16    # "outputStream":Ljava/io/OutputStream;
    .restart local v21    # "vcardType":I
    .restart local v23    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    move-object/from16 v22, v23

    .end local v23    # "writer":Ljava/io/Writer;
    .local v22, "writer":Ljava/io/Writer;
    goto :goto_c

    .line 228
    .end local v22    # "writer":Ljava/io/Writer;
    .restart local v23    # "writer":Ljava/io/Writer;
    :catch_b
    move-exception v12

    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v22, v23

    .end local v23    # "writer":Ljava/io/Writer;
    .restart local v22    # "writer":Ljava/io/Writer;
    goto/16 :goto_a
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    .local v0, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 370
    :cond_0
    const-string/jumbo v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 372
    :cond_1
    const-string/jumbo v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 375
    :cond_2
    return-object p1
.end method

.method private tryAppendLocalProfile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->isProfileEmpty(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mLocaleProfileExport:Z

    .line 358
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->contactIds:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 360
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    .line 381
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "received cancel request"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 388
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportStarted:Z

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportCanceled(Lcom/android/contacts/common/vcard/ExportRequest;I)V

    .line 391
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 392
    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/common/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 91
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 94
    return-void

    .line 96
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 100
    :try_start_2
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->runInternal()V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-interface {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportCanceled(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    :cond_1
    monitor-enter p0

    .line 113
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 112
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    sget-object v2, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeException thrown during export"

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 111
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v2

    .line 112
    monitor-enter p0

    .line 113
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    .line 111
    throw v2

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    sget-object v2, Lcom/android/contacts/common/vcard/ExportProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "OutOfMemoryError thrown during import"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_3
    move-exception v2

    monitor-exit p0

    throw v2
.end method
