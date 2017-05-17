.class public abstract Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;
.source "ContactEntryListAdapter.java"


# static fields
.field private static final DEFAULT_DIRECTORY_TYPE:Ljava/lang/String; = "Contacts"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mDisplayPresence:Z

.field private mDisplaySnsMessage:Z

.field private mIncludeProfile:Z

.field protected mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->addPartitions()V

    .line 65
    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 86
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 88
    .local v2, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 89
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 90
    return v1

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 359
    if-nez p1, :cond_0

    .line 360
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->setSectionIndexer(Landroid/widget/SectionIndexer;)V

    .line 361
    return-void

    .line 364
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 366
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v2, "key_contacts_indexer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const-string/jumbo v2, "key_contacts_indexer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 368
    .local v1, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getCurrentMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 369
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->setSectionIndexer(Landroid/widget/SectionIndexer;)V

    .line 358
    .end local v1    # "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    :goto_0
    return-void

    .line 371
    .restart local v1    # "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->setSectionIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 374
    .end local v1    # "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->setSectionIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->addPartition(Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;)V

    .line 71
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 332
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 336
    .local v0, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v1, :cond_1

    .line 337
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setStatus(I)V

    .line 340
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->refreshCache()V

    .line 344
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 347
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 329
    :cond_3
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 351
    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 275
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_0

    .line 278
    sget-object v14, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    .line 279
    new-instance v16, Ljava/lang/RuntimeException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/RuntimeException;-><init>()V

    .line 278
    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    return-void

    .line 282
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 284
    .local v3, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string/jumbo v14, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 285
    .local v7, "idColumnIndex":I
    const-string/jumbo v14, "directoryType"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 286
    .local v4, "directoryTypeColumnIndex":I
    const-string/jumbo v14, "displayName"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 287
    .local v5, "displayNameColumnIndex":I
    const-string/jumbo v14, "photoSupport"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 291
    .local v13, "photoSupportColumnIndex":I
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 292
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 293
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 294
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 296
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v11, v14, v15}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;-><init>(ZZ)V

    .line 297
    .local v11, "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    invoke-virtual {v11, v8, v9}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setDirectoryId(J)V

    .line 298
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 301
    .local v12, "photoSupport":I
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-eqz v14, :cond_2

    const-wide/16 v14, 0x1

    cmp-long v14, v8, v14

    if-eqz v14, :cond_2

    .line 304
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 310
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->addPartition(Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v14, 0x1

    .line 306
    if-eq v12, v14, :cond_3

    .line 308
    const/4 v14, 0x3

    if-ne v12, v14, :cond_4

    const/4 v14, 0x1

    .line 306
    :goto_2
    invoke-virtual {v11, v14}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setPhotoSupported(Z)V

    goto :goto_1

    :cond_3
    const/4 v14, 0x1

    goto :goto_2

    .line 308
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 315
    .end local v8    # "id":J
    .end local v11    # "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    .end local v12    # "photoSupport":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 316
    .local v2, "count":I
    move v6, v2

    .local v6, "i":I
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_7

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v10

    .line 318
    .local v10, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v14, v10, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v14, :cond_6

    .line 319
    check-cast v10, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v10    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v8

    .line 320
    .restart local v8    # "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 321
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_3

    .line 274
    .end local v8    # "id":J
    :cond_7
    return-void
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 114
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 115
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 116
    .local v3, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 117
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 118
    .local v1, "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setStatus(I)V

    .line 114
    .end local v1    # "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter;->clearPartitions()V

    .line 112
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 382
    const/4 v1, -0x1

    .line 383
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 384
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 385
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 386
    .local v3, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v4, :cond_2

    .line 387
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 388
    move v1, v2

    .line 392
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 393
    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 394
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 381
    :cond_1
    return-void

    .line 384
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 76
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    invoke-direct {v0, v4, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;-><init>(ZZ)V

    .line 77
    .local v0, "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setDirectoryId(J)V

    .line 78
    const-string/jumbo v1, "Contacts"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 80
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 81
    return-object v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getDisplayPresence()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayPresence:Z

    return v0
.end method

.method public getDisplaySnsMessage()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplaySnsMessage:Z

    return v0
.end method

.method public final getPhotoManager()Lcom/android/contacts/photomanager/ContactPhotoManager;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    array-length v0, v2

    .line 147
    .local v0, "len":I
    new-array v1, v0, [C

    .line 148
    .local v1, "result":[C
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 150
    return-object v1
.end method

.method public hasContact()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 408
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 409
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 410
    .local v2, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 411
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->isLoading()Z

    move-result v3

    .line 410
    if-eqz v3, :cond_0

    .line 412
    const/4 v3, 0x1

    return v3

    .line 408
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 400
    .local v0, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    return v1

    .line 403
    .restart local v0    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method public onDataReload()V
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 102
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 104
    .local v3, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 105
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 106
    .local v1, "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setStatus(I)V

    .line 102
    .end local v1    # "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_1
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 173
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 165
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 157
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 203
    return-void
.end method

.method public setDisplayPresence(Z)V
    .locals 0
    .param p1, "displayPresence"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplayPresence:Z

    .line 227
    return-void
.end method

.method public setDisplaySnsMessage(Z)V
    .locals 0
    .param p1, "displaySns"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mDisplaySnsMessage:Z

    .line 235
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 243
    return-void
.end method

.method public final setPhotoManager(Lcom/android/contacts/photomanager/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoManager"    # Lcom/android/contacts/photomanager/ContactPhotoManager;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 191
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 2
    .param p1, "exists"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v0

    .line 252
    .local v0, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->setProfileExist(Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V

    .line 247
    .end local v0    # "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    .line 136
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 219
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 128
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 211
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mSortOrder:I

    .line 181
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
