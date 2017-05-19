.class public Lcom/android/contacts/common/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ContactLoader$ContactQuery;,
        Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/common/model/ContactLoader$GroupQuery;,
        Lcom/android/contacts/common/model/ContactLoader$AccountKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/common/model/Contact;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private mLoadGroupMetaData:Z

.field private mLoadInvitableAccountTypes:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "postViewNotification"    # Z

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "loadGroupMetaData"    # Z
    .param p4, "loadInvitableAccountTypes"    # Z
    .param p5, "postViewNotification"    # Z
    .param p6, "computeFormattedPhoneNumber"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 112
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 113
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 114
    iput-boolean p3, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 115
    iput-boolean p4, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 116
    iput-boolean p5, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 117
    iput-boolean p6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 110
    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "countryIso":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 929
    .local v9, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 930
    .local v7, "rawContactCount":I
    const/4 v8, 0x0

    .local v8, "rawContactIndex":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 931
    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/RawContact;

    .line 932
    .local v6, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 933
    .local v4, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 934
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 935
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 936
    .local v3, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    instance-of v10, v3, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v10, :cond_0

    move-object v5, v3

    .line 937
    check-cast v5, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 938
    .local v5, "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual {v5, v0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    .line 934
    .end local v5    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 930
    .end local v3    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 926
    .end local v1    # "dataCount":I
    .end local v2    # "dataIndex":I
    .end local v4    # "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v6    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "index"    # I

    .prologue
    .line 774
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 788
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 773
    :goto_0
    :pswitch_2
    return-void

    .line 782
    :pswitch_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :pswitch_4
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 21
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 502
    const-string/jumbo v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 503
    .local v3, "entityUri":Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 504
    const-string/jumbo v7, "raw_contact_id"

    .line 503
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 505
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 506
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    return-object v2

    .line 511
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 554
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 513
    return-object v2

    .line 517
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderDataEX(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v8

    .line 521
    .local v8, "contact":Lcom/android/contacts/common/model/Contact;
    const-wide/16 v10, -0x1

    .line 522
    .local v10, "currentRawContactId":J
    const/4 v13, 0x0

    .line 524
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    new-instance v18, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 526
    .local v18, "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    new-instance v20, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 528
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .local v20, "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :cond_2
    const/16 v2, 0xe

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 529
    .local v16, "rawContactId":J
    cmp-long v2, v16, v10

    if-eqz v2, :cond_3

    .line 532
    move-wide/from16 v10, v16

    .line 533
    new-instance v13, Lcom/android/contacts/common/model/RawContact;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/common/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 534
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 536
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    const/16 v2, 0x1a

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 537
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/common/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 538
    .local v12, "data":Landroid/content/ContentValues;
    invoke-virtual {v13, v12}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 540
    const/16 v2, 0x33

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    const/16 v2, 0x35

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 547
    .end local v12    # "data":Landroid/content/ContentValues;
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 550
    invoke-virtual/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 552
    return-object v8

    .line 542
    .restart local v12    # "data":Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    new-instance v19, Lcom/android/contacts/common/util/DataStatus;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/android/contacts/common/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 543
    .local v19, "status":Lcom/android/contacts/common/util/DataStatus;
    const/16 v2, 0x1a

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 544
    .local v14, "dataId":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 553
    .end local v8    # "contact":Lcom/android/contacts/common/model/Contact;
    .end local v10    # "currentRawContactId":J
    .end local v12    # "data":Landroid/content/ContentValues;
    .end local v14    # "dataId":J
    .end local v16    # "rawContactId":J
    .end local v18    # "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    .end local v19    # "status":Lcom/android/contacts/common/util/DataStatus;
    .end local v20    # "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    .line 554
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 553
    throw v2
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 661
    const-string/jumbo v2, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 662
    .local v27, "directoryParameter":Ljava/lang/String;
    if-nez v27, :cond_1

    .line 663
    const-wide/16 v6, 0x0

    .line 665
    .local v6, "directoryId":J
    :goto_0
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 666
    .local v9, "contactId":J
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 667
    .local v8, "lookupKey":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 668
    .local v11, "nameRawContactId":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 669
    .local v13, "displayNameSource":I
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 670
    .local v17, "displayName":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 671
    .local v18, "altDisplayName":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 672
    .local v19, "phoneticName":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 673
    .local v14, "photoId":J
    const/16 v2, 0x3a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 674
    .local v16, "photoUri":Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v20, 0x1

    .line 675
    .local v20, "starred":Z
    :goto_1
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    const/16 v21, 0x0

    .line 678
    :goto_2
    const/16 v2, 0x3b

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v22, 0x1

    .line 679
    .local v22, "sendToVoicemail":Z
    :goto_3
    const/16 v2, 0x3c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 680
    .local v23, "customRingtone":Ljava/lang/String;
    const/16 v2, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/16 v24, 0x1

    .line 682
    .local v24, "isUserProfile":Z
    :goto_4
    const/16 v2, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v26, 0x1

    .line 683
    .local v26, "blockVideoCall":Z
    :goto_5
    const/16 v2, 0x44

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 687
    .local v25, "isSdnContact":I
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_7

    .line 689
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 688
    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 695
    .local v5, "lookupUri":Landroid/net/Uri;
    :goto_6
    new-instance v2, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v26}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZIZ)V

    return-object v2

    .line 664
    .end local v5    # "lookupUri":Landroid/net/Uri;
    .end local v6    # "directoryId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    .end local v9    # "contactId":J
    .end local v11    # "nameRawContactId":J
    .end local v13    # "displayNameSource":I
    .end local v14    # "photoId":J
    .end local v16    # "photoUri":Ljava/lang/String;
    .end local v17    # "displayName":Ljava/lang/String;
    .end local v18    # "altDisplayName":Ljava/lang/String;
    .end local v19    # "phoneticName":Ljava/lang/String;
    .end local v20    # "starred":Z
    .end local v22    # "sendToVoicemail":Z
    .end local v23    # "customRingtone":Ljava/lang/String;
    .end local v24    # "isUserProfile":Z
    .end local v25    # "isSdnContact":I
    .end local v26    # "blockVideoCall":Z
    :cond_1
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .restart local v6    # "directoryId":J
    goto/16 :goto_0

    .line 674
    .restart local v8    # "lookupKey":Ljava/lang/String;
    .restart local v9    # "contactId":J
    .restart local v11    # "nameRawContactId":J
    .restart local v13    # "displayNameSource":I
    .restart local v14    # "photoId":J
    .restart local v16    # "photoUri":Ljava/lang/String;
    .restart local v17    # "displayName":Ljava/lang/String;
    .restart local v18    # "altDisplayName":Ljava/lang/String;
    .restart local v19    # "phoneticName":Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "starred":Z
    goto :goto_1

    .line 677
    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "presence":Ljava/lang/Integer;
    goto :goto_2

    .line 678
    .end local v21    # "presence":Ljava/lang/Integer;
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "sendToVoicemail":Z
    goto :goto_3

    .line 680
    .restart local v23    # "customRingtone":Ljava/lang/String;
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "isUserProfile":Z
    goto :goto_4

    .line 682
    :cond_6
    const/16 v26, 0x0

    .restart local v26    # "blockVideoCall":Z
    goto :goto_5

    .line 691
    .restart local v25    # "isSdnContact":I
    :cond_7
    move-object/from16 v5, p2

    .restart local v5    # "lookupUri":Landroid/net/Uri;
    goto :goto_6
.end method

.method private loadContactHeaderDataEX(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1082
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    .line 1084
    .local v0, "contact":Lcom/android/contacts/common/model/Contact;
    const/16 v2, 0x42

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->setIndicate(I)V

    .line 1085
    const/16 v2, 0x43

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->setSimIndex(I)V

    .line 1087
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getIndicate()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getSlotIdUsingSubId(I)I

    move-result v1

    .line 1088
    .local v1, "slotId":I
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/Contact;->setSlot(I)V

    .line 1089
    return-object v0
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 730
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 732
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 735
    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 736
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 737
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 738
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 739
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 740
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 741
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 742
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 743
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 744
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 745
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 746
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 747
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 748
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 749
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 750
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 751
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 752
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 753
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 754
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 755
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 756
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 757
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 758
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 759
    const/16 v1, 0x3e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 760
    const/16 v1, 0x3f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 764
    const/16 v1, 0x45

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 766
    const/16 v1, 0x41

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 769
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 16
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 793
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getDirectoryId()J

    move-result-wide v8

    .line 795
    .local v8, "directoryId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 796
    sget-object v14, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 797
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 795
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 798
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 799
    return-void

    .line 802
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 806
    .local v13, "typeResourceId":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "accountName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 809
    .local v5, "exportSupport":I
    const/4 v2, 0x0

    .line 810
    .local v2, "directoryType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 813
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 814
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    .line 821
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "typeResourceId":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 792
    return-void

    .line 815
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v2    # "directoryType":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "accountName":Ljava/lang/String;
    .restart local v5    # "exportSupport":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "typeResourceId":I
    :catch_0
    move-exception v7

    .line 816
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Contact directory resource not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 817
    const-string/jumbo v15, "."

    .line 816
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 824
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "typeResourceId":I
    :catchall_0
    move-exception v0

    .line 825
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 824
    throw v0
.end method

.method private static loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 42
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v36

    .line 410
    .local v36, "jsonString":Ljava/lang/String;
    new-instance v35, Lorg/json/JSONObject;

    invoke-direct/range {v35 .. v36}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 413
    .local v35, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "directory"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 415
    .local v7, "directoryId":J
    const-string/jumbo v4, "display_name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 417
    .local v18, "displayName":Ljava/lang/String;
    const-string/jumbo v4, "display_name_alt"

    .line 416
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 418
    .local v19, "altDisplayName":Ljava/lang/String;
    const-string/jumbo v4, "display_name_source"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 419
    .local v14, "displayNameSource":I
    const-string/jumbo v4, "photo_uri"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 420
    .local v17, "photoUri":Ljava/lang/String;
    new-instance v3, Lcom/android/contacts/common/model/Contact;

    .line 425
    const-wide/16 v10, -0x1

    .line 426
    const-wide/16 v12, -0x1

    .line 428
    const-wide/16 v15, 0x0

    .line 424
    const/4 v9, 0x0

    .line 432
    const/16 v20, 0x0

    .line 433
    const/16 v21, 0x0

    .line 434
    const/16 v22, 0x0

    .line 435
    const/16 v23, 0x0

    .line 436
    const/16 v24, 0x0

    .line 437
    const/16 v25, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 420
    invoke-direct/range {v3 .. v25}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 439
    .local v3, "contact":Lcom/android/contacts/common/model/Contact;
    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V

    .line 441
    const-string/jumbo v4, "account_name"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 442
    .local v23, "accountName":Ljava/lang/String;
    const-string/jumbo v4, "displayName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 443
    .local v21, "directoryName":Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 444
    const-string/jumbo v4, "account_type"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 446
    .local v24, "accountType":Ljava/lang/String;
    const-string/jumbo v4, "exportSupport"

    .line 447
    const/4 v5, 0x1

    .line 446
    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 445
    const/16 v22, 0x0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v25}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    .end local v24    # "accountType":Ljava/lang/String;
    :goto_0
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v41, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string/jumbo v4, "contact_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    new-instance v40, Lcom/android/contacts/common/model/RawContact;

    invoke-direct/range {v40 .. v41}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 458
    .local v40, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string/jumbo v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 459
    .local v34, "items":Lorg/json/JSONObject;
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v37

    .line 460
    .local v37, "keys":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 464
    .local v38, "mimetype":Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v39

    .line 465
    .local v39, "obj":Lorg/json/JSONObject;
    if-nez v39, :cond_2

    .line 466
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 467
    .local v31, "array":Lorg/json/JSONArray;
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_2
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_0

    .line 468
    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 469
    .local v33, "item":Lorg/json/JSONObject;
    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 467
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 450
    .end local v31    # "array":Lorg/json/JSONArray;
    .end local v32    # "i":I
    .end local v33    # "item":Lorg/json/JSONObject;
    .end local v34    # "items":Lorg/json/JSONObject;
    .end local v37    # "keys":Ljava/util/Iterator;
    .end local v38    # "mimetype":Ljava/lang/String;
    .end local v39    # "obj":Lorg/json/JSONObject;
    .end local v40    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v4, "exportSupport"

    const/4 v5, 0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    .line 449
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v3

    move-object/from16 v26, v21

    invoke-virtual/range {v25 .. v30}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 472
    .restart local v34    # "items":Lorg/json/JSONObject;
    .restart local v37    # "keys":Ljava/util/Iterator;
    .restart local v38    # "mimetype":Ljava/lang/String;
    .restart local v39    # "obj":Lorg/json/JSONObject;
    .restart local v40    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .restart local v41    # "values":Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 476
    .end local v38    # "mimetype":Ljava/lang/String;
    .end local v39    # "obj":Lorg/json/JSONObject;
    :cond_3
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 479
    return-object v3
.end method

.method private loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 20
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 862
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .local v17, "selection":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v18, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 865
    .local v12, "accountsSeen":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/contacts/common/model/ContactLoader$AccountKey;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/common/model/RawContact;

    .line 866
    .local v15, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v15}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, "accountName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v4

    .line 868
    .local v4, "accountType":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v5

    .line 869
    .local v5, "dataSet":Ljava/lang/String;
    new-instance v11, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    invoke-direct {v11, v3, v4, v5}, Lcom/android/contacts/common/model/ContactLoader$AccountKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .local v11, "accountKey":Lcom/android/contacts/common/model/ContactLoader$AccountKey;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 871
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 872
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    const-string/jumbo v2, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_1
    const-string/jumbo v2, "(account_name=? AND account_type=?"

    .line 876
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    if-eqz v5, :cond_2

    .line 882
    const-string/jumbo v2, " AND data_set=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    :goto_1
    const-string/jumbo v2, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 885
    :cond_2
    const-string/jumbo v2, " AND data_set IS NULL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 891
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v11    # "accountKey":Lcom/android/contacts/common/model/ContactLoader$AccountKey;
    .end local v15    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    new-instance v14, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v14}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 892
    .local v14, "groupListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/GroupMetaData;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 893
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 894
    const/4 v7, 0x0

    .line 892
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 895
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_9

    .line 897
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 898
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 899
    .restart local v3    # "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 900
    .restart local v4    # "accountType":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 901
    .restart local v5    # "dataSet":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 902
    .local v6, "groupId":J
    const/4 v2, 0x4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 903
    .local v8, "title":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 904
    const/4 v9, 0x0

    .line 906
    .local v9, "defaultGroup":Z
    :goto_3
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 907
    const/4 v10, 0x0

    .line 910
    .local v10, "favorites":Z
    :goto_4
    new-instance v2, Lcom/android/contacts/common/GroupMetaData;

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    invoke-virtual {v14, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 914
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "defaultGroup":Z
    .end local v10    # "favorites":Z
    :catchall_0
    move-exception v2

    .line 915
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 914
    throw v2

    .line 905
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "dataSet":Ljava/lang/String;
    .restart local v6    # "groupId":J
    .restart local v8    # "title":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x5

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    .restart local v9    # "defaultGroup":Z
    goto :goto_3

    .end local v9    # "defaultGroup":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "defaultGroup":Z
    goto :goto_3

    .line 908
    :cond_6
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v10, 0x1

    .restart local v10    # "favorites":Z
    goto :goto_4

    .end local v10    # "favorites":Z
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "favorites":Z
    goto :goto_4

    .line 915
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "defaultGroup":Z
    .end local v10    # "favorites":Z
    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 918
    :cond_9
    invoke-virtual {v14}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    .line 861
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V
    .locals 8
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 632
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 633
    .local v3, "resultListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v0

    .line 636
    .local v0, "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 638
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 641
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 643
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    .line 644
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v7

    .line 642
    invoke-static {v6, v7}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v5

    .line 645
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 648
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 653
    .end local v0    # "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v2    # "rawContact$iterator":Ljava/util/Iterator;
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/contacts/common/model/Contact;->setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V

    .line 630
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->loadThumbnailBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 566
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "photoUri":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 571
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 572
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 573
    .local v6, "scheme":Ljava/lang/String;
    const-string/jumbo v9, "http"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "https"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 575
    :cond_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 576
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 581
    :goto_0
    const/16 v9, 0x4000

    new-array v1, v9, [B

    .line 582
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "size":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    .line 586
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 589
    .end local v7    # "size":I
    :catchall_0
    move-exception v9

    .line 590
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 591
    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 589
    :cond_1
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 596
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 602
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V

    .line 562
    return-void

    .line 578
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "r"

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 579
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 588
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v7    # "size":I
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 590
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 591
    if-eqz v2, :cond_5

    .line 592
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 595
    :cond_5
    return-void
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 705
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 707
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 710
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 711
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 712
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 713
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 714
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 715
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 716
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 717
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 718
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 719
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 720
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 721
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 723
    return-object v0
.end method

.method private loadThumbnailBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 10
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 606
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v4

    .line 607
    .local v4, "photoId":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContact;

    .line 613
    .local v3, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 614
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_2

    .line 615
    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    if-eqz v7, :cond_1

    move-object v2, v0

    .line 619
    check-cast v2, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    .line 620
    .local v2, "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/contacts/common/model/Contact;->setThumbnailPhotoBinaryData([B)V

    goto :goto_0

    .line 605
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v1    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v2    # "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    .end local v3    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    return-void
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 13

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 982
    .local v1, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContact;

    .line 983
    .local v4, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 984
    .local v6, "rawContactId":J
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 987
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 988
    invoke-virtual {v4, v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 989
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v8

    .line 990
    .local v8, "serviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v9

    .line 991
    .local v9, "servicePackageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 992
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 993
    .local v10, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 994
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const-string/jumbo v11, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v2

    .line 1000
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error sending message to source-app"

    invoke-static {v11, v12, v2}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 980
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v6    # "rawContactId":J
    .end local v8    # "serviceName":Ljava/lang/String;
    .end local v9    # "servicePackageName":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private static processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p0, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p1, "item"    # Lorg/json/JSONObject;
    .param p2, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v0, "itemValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "mimetype"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v4, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 492
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 493
    check-cast v3, Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 495
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 498
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 483
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1007
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1009
    iput-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1006
    :cond_0
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/common/model/Contact;)V
    .locals 4
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 949
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 950
    :cond_0
    return-void

    .line 953
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 955
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 956
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 958
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 959
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 961
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 963
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 964
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 963
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 967
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_4

    .line 969
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 973
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 945
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 945
    check-cast p1, Lcom/android/contacts/common/model/Contact;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/common/model/Contact;
    .locals 9

    .prologue
    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 346
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 345
    invoke-static {v2, v6}, Lcom/android/contacts/common/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 347
    .local v5, "uriCurrentFormat":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 348
    .local v0, "cachedResult":Lcom/android/contacts/common/model/Contact;
    const/4 v6, 0x0

    sput-object v6, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 352
    if-eqz v0, :cond_4

    .line 353
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    .line 352
    if-eqz v6, :cond_4

    .line 356
    new-instance v3, Lcom/android/contacts/common/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v0}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V

    .line 357
    .local v3, "result":Lcom/android/contacts/common/model/Contact;
    const/4 v4, 0x1

    .line 366
    .local v4, "resultIsCached":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 367
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 368
    if-nez v4, :cond_0

    .line 369
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V

    .line 376
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v6, :cond_1

    .line 377
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V

    .line 379
    :cond_1
    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 382
    :cond_2
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 383
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V

    .line 386
    :cond_3
    return-object v3

    .line 359
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "encoded"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 360
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/android/contacts/common/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .line 364
    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "resultIsCached":Z
    goto :goto_0

    .line 362
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    :cond_5
    invoke-direct {p0, v2, v5}, Lcom/android/contacts/common/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    goto :goto_2

    .line 371
    .restart local v4    # "resultIsCached":Z
    :cond_6
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v6, :cond_0

    .line 372
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 373
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    .end local v0    # "cachedResult":Lcom/android/contacts/common/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error loading the contact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v6, v1}, Lcom/android/contacts/common/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->loadInBackground()Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 1059
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 1056
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_2

    .line 1046
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->forceLoad()V

    .line 1040
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 1051
    return-void
.end method
