.class public Lcom/android/contacts/common/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ContactLoader$ContactQuery;,
        Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/common/model/ContactLoader$GroupQuery;,
        Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;
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
.field private static final CHAMELEON_PRELOAD_CONTACT_PREFIX:Ljava/lang/String; = "./Customization/Contacts/"

.field static final DEFAULT_EXCLUDED_ACCOUNTS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/common/model/Contact;

.field protected static final sLockObject:Ljava/lang/Object;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private final mExcludedAccounts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 3

    .prologue
    .line 76
    const-class v0, Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "com.sonymobile.videocalling"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->DEFAULT_EXCLUDED_ACCOUNTS:Ljava/util/Collection;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sLockObject:Ljava/lang/Object;

    .line 75
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

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZLcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "postViewNotification"    # Z
    .param p4, "excludedAccountsBuilder"    # Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    move-object v7, p4

    .line 111
    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZLcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "loadGroupMetaData"    # Z
    .param p4, "loadInvitableAccountTypes"    # Z
    .param p5, "postViewNotification"    # Z
    .param p6, "computeFormattedPhoneNumber"    # Z

    .prologue
    const/4 v3, 0x0

    .line 119
    new-instance v7, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;

    invoke-direct {v7}, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p5

    move v6, p6

    .line 118
    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZLcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZLcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "loadGroupMetaData"    # Z
    .param p4, "loadInvitableAccountTypes"    # Z
    .param p5, "postViewNotification"    # Z
    .param p6, "computeFormattedPhoneNumber"    # Z
    .param p7, "excludedAccountsBuilder"    # Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 87
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->DEFAULT_EXCLUDED_ACCOUNTS:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mExcludedAccounts:Ljava/util/Collection;

    .line 101
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 126
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 127
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 128
    iput-boolean p3, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 129
    iput-boolean p4, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 130
    iput-boolean p5, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 131
    iput-boolean p6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 132
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mExcludedAccounts:Ljava/util/Collection;

    invoke-virtual {p7}, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;->build()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 124
    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "countryIso":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 799
    .local v9, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 800
    .local v7, "rawContactCount":I
    const/4 v8, 0x0

    .local v8, "rawContactIndex":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 801
    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/RawContact;

    .line 802
    .local v6, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 803
    .local v4, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 804
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 805
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 806
    .local v3, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    instance-of v10, v3, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v10, :cond_0

    move-object v5, v3

    .line 807
    check-cast v5, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 808
    .local v5, "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual {v5, v0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    .line 804
    .end local v5    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 800
    .end local v3    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 796
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
    .line 676
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 690
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 675
    :goto_0
    :pswitch_2
    return-void

    .line 684
    :pswitch_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :pswitch_4
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static generateLoaderSelection(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "excludedAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v1, "selectionBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v2, " IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string/jumbo v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string/jumbo v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 397
    const-string/jumbo v2, "?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 402
    .end local v0    # "i":I
    .end local v1    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 26
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 406
    const-string/jumbo v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 408
    .local v3, "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mExcludedAccounts:Ljava/util/Collection;

    invoke-static {v2}, Lcom/android/contacts/common/model/ContactLoader;->generateLoaderSelection(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "selection":Ljava/lang/String;
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mExcludedAccounts:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/model/ContactLoader;->mExcludedAccounts:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 411
    const-string/jumbo v7, "raw_contact_id"

    move-object/from16 v2, p1

    .line 409
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 412
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 413
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    return-object v2

    .line 417
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 418
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Load contacts Count == 0, maybe this contacts no account!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v8, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 420
    const-string/jumbo v11, "raw_contact_id"

    .line 419
    const/4 v9, 0x0

    .line 420
    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object v7, v3

    .line 419
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 424
    :cond_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 425
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 426
    return-object v2

    .line 430
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v12

    .line 434
    .local v12, "contact":Lcom/android/contacts/common/model/Contact;
    const-wide/16 v14, -0x1

    .line 435
    .local v14, "currentRawContactId":J
    const/16 v20, 0x0

    .line 437
    .local v20, "rawContact":Lcom/android/contacts/common/model/RawContact;
    new-instance v21, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v21 .. v21}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 439
    .local v21, "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    new-instance v25, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 441
    .end local v20    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .local v25, "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/util/DataStatus;>;"
    :cond_3
    const/16 v2, 0xe

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 442
    .local v22, "rawContactId":J
    cmp-long v2, v22, v14

    if-eqz v2, :cond_4

    .line 445
    move-wide/from16 v14, v22

    .line 446
    new-instance v20, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v4}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 447
    .local v20, "rawContact":Lcom/android/contacts/common/model/RawContact;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 449
    .end local v20    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_4
    const/16 v2, 0x1b

    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 450
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v16

    .line 451
    .local v16, "data":Landroid/content/ContentValues;
    if-eqz v20, :cond_5

    .line 452
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v17

    .line 455
    :cond_5
    const/16 v2, 0x35

    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 456
    const/16 v2, 0x37

    invoke-interface {v13, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 462
    .end local v16    # "data":Landroid/content/ContentValues;
    :cond_6
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 464
    invoke-virtual/range {v21 .. v21}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 465
    invoke-virtual/range {v25 .. v25}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V

    .line 467
    invoke-virtual {v12}, Lcom/android/contacts/common/model/Contact;->getId()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isIceContact(Landroid/content/ContentResolver;J)Z

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/Contact;->setIsIceContact(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 469
    return-object v12

    .line 457
    .restart local v16    # "data":Landroid/content/ContentValues;
    :cond_7
    :try_start_2
    new-instance v24, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 458
    .local v24, "status":Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    const/16 v2, 0x1b

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 459
    .local v18, "dataId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 470
    .end local v12    # "contact":Lcom/android/contacts/common/model/Contact;
    .end local v14    # "currentRawContactId":J
    .end local v16    # "data":Landroid/content/ContentValues;
    .end local v18    # "dataId":J
    .end local v21    # "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    .end local v22    # "rawContactId":J
    .end local v24    # "status":Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    .end local v25    # "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 470
    throw v2
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 31
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 569
    const-string/jumbo v2, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 570
    .local v29, "directoryParameter":Ljava/lang/String;
    if-nez v29, :cond_1

    .line 571
    const-wide/16 v6, 0x0

    .line 573
    .local v6, "directoryId":J
    :goto_0
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 574
    .local v9, "contactId":J
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 575
    .local v8, "lookupKey":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 576
    .local v11, "nameRawContactId":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 577
    .local v13, "displayNameSource":I
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 578
    .local v17, "displayName":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 579
    .local v18, "altDisplayName":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 580
    .local v19, "phoneticName":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 581
    .local v14, "photoId":J
    const/16 v2, 0x3c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 582
    .local v16, "photoUri":Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v20, 0x1

    .line 583
    .local v20, "starred":Z
    :goto_1
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 584
    const/16 v21, 0x0

    .line 586
    :goto_2
    const/16 v2, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/16 v22, 0x1

    .line 587
    .local v22, "sendToVoicemail":Z
    :goto_3
    const/16 v2, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 588
    .local v23, "customRingtone":Ljava/lang/String;
    const/16 v2, 0x3f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/16 v24, 0x1

    .line 589
    .local v24, "isUserProfile":Z
    :goto_4
    const/16 v2, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v25, 0x1

    .line 591
    .local v25, "isInVisibleGroup":Z
    :goto_5
    const/16 v2, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 592
    .local v28, "chameleonPreloadedNode":Ljava/lang/String;
    if-eqz v28, :cond_7

    .line 593
    const-string/jumbo v2, "./Customization/Contacts/"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    .line 594
    :goto_6
    const/16 v2, 0x41

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 597
    .local v26, "photoFileId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_8

    .line 599
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 598
    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 604
    .local v5, "lookupUri":Landroid/net/Uri;
    :goto_7
    new-instance v2, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v27}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZJ)V

    return-object v2

    .line 572
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
    .end local v25    # "isInVisibleGroup":Z
    .end local v26    # "photoFileId":J
    .end local v28    # "chameleonPreloadedNode":Ljava/lang/String;
    :cond_1
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .restart local v6    # "directoryId":J
    goto/16 :goto_0

    .line 582
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

    .line 585
    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "presence":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 586
    .end local v21    # "presence":Ljava/lang/Integer;
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "sendToVoicemail":Z
    goto :goto_3

    .line 588
    .restart local v23    # "customRingtone":Ljava/lang/String;
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "isUserProfile":Z
    goto :goto_4

    .line 589
    :cond_6
    const/16 v25, 0x0

    .restart local v25    # "isInVisibleGroup":Z
    goto :goto_5

    .line 593
    .restart local v28    # "chameleonPreloadedNode":Ljava/lang/String;
    :cond_7
    const/16 v30, 0x0

    .local v30, "isChameleonPreloadedContact":Z
    goto :goto_6

    .line 601
    .end local v30    # "isChameleonPreloadedContact":Z
    .restart local v26    # "photoFileId":J
    :cond_8
    move-object/from16 v5, p2

    .restart local v5    # "lookupUri":Landroid/net/Uri;
    goto :goto_7
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 640
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 642
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 644
    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 645
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 646
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 647
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 648
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 649
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 650
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 651
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 652
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 653
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 654
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 655
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 656
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 657
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 658
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 659
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 660
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 661
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 662
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 663
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 664
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 665
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 666
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 667
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 668
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 669
    const/16 v1, 0x36

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 671
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 16
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getDirectoryId()J

    move-result-wide v8

    .line 697
    .local v8, "directoryId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 698
    sget-object v14, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 699
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 697
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 700
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 701
    return-void

    .line 704
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 707
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 708
    .local v13, "typeResourceId":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "accountName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 711
    .local v5, "exportSupport":I
    const/4 v2, 0x0

    .line 712
    .local v2, "directoryType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 715
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 716
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

    .line 723
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "typeResourceId":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 694
    return-void

    .line 717
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

    .line 718
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

    .line 719
    const-string/jumbo v15, "."

    .line 718
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 726
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

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 726
    throw v0
.end method

.method private loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 18
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 736
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .local v16, "selection":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v17, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/common/model/RawContact;

    .line 739
    .local v14, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "accountName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v4

    .line 741
    .local v4, "accountType":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, "dataSet":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 743
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    const-string/jumbo v2, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_1
    const-string/jumbo v2, "(account_name=? AND account_type=?"

    .line 746
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    if-eqz v5, :cond_2

    .line 752
    const-string/jumbo v2, " AND data_set=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :goto_1
    const-string/jumbo v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 755
    :cond_2
    const-string/jumbo v2, " AND data_set IS NULL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 760
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v14    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 761
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 762
    const/4 v7, 0x0

    .line 760
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 763
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_4

    .line 764
    return-void

    .line 767
    :cond_4
    new-instance v13, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v13}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 769
    .local v13, "groupListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;>;"
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 770
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 771
    .restart local v3    # "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 772
    .restart local v4    # "accountType":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 773
    .restart local v5    # "dataSet":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 774
    .local v6, "groupId":J
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 775
    .local v8, "title":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 776
    const/4 v9, 0x0

    .line 778
    .local v9, "defaultGroup":Z
    :goto_3
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 779
    const/4 v10, 0x0

    .line 782
    .local v10, "favorites":Z
    :goto_4
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;

    .line 783
    const/4 v11, 0x0

    .line 782
    invoke-direct/range {v2 .. v11}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZZ)V

    invoke-virtual {v13, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 785
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "defaultGroup":Z
    .end local v10    # "favorites":Z
    :catchall_0
    move-exception v2

    .line 786
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 785
    throw v2

    .line 777
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "dataSet":Ljava/lang/String;
    .restart local v6    # "groupId":J
    .restart local v8    # "title":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x6

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v9, 0x1

    .restart local v9    # "defaultGroup":Z
    goto :goto_3

    .end local v9    # "defaultGroup":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "defaultGroup":Z
    goto :goto_3

    .line 780
    :cond_7
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    const/4 v10, 0x1

    .restart local v10    # "favorites":Z
    goto :goto_4

    .end local v10    # "favorites":Z
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "favorites":Z
    goto :goto_4

    .line 786
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "defaultGroup":Z
    .end local v10    # "favorites":Z
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 788
    invoke-virtual {v13}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    .line 735
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V
    .locals 8
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 540
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 541
    .local v3, "resultListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v0

    .line 544
    .local v0, "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 546
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 549
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

    .line 551
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    .line 552
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v7

    .line 550
    invoke-static {v6, v7}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v5

    .line 553
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 556
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 561
    .end local v0    # "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v2    # "rawContact$iterator":Ljava/util/Iterator;
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/contacts/common/model/Contact;->setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V

    .line 538
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 19
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, "photoUri":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 485
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 486
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const-string/jumbo v18, "r"

    .line 485
    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 487
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v16, 0x4000

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 488
    .local v3, "buffer":[B
    const/4 v7, 0x0

    .line 489
    .local v7, "fis":Ljava/io/FileInputStream;
    if-eqz v6, :cond_4

    .line 490
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    .line 491
    .local v7, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz v7, :cond_2

    .line 495
    :goto_0
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    .local v15, "size":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 496
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 500
    .end local v15    # "size":I
    :catchall_0
    move-exception v16

    .line 501
    if-eqz v7, :cond_0

    .line 502
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 504
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 500
    throw v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 514
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v10

    .line 515
    .local v10, "photoId":J
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-gtz v16, :cond_5

    .line 517
    return-void

    .line 499
    .end local v10    # "photoId":J
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    if-eqz v7, :cond_3

    .line 502
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 504
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 507
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :cond_4
    return-void

    .line 520
    .end local v3    # "buffer":[B
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "photoId":J
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "rawContact$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/model/RawContact;

    .line 521
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v13}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "dataItem$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 522
    .local v4, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v16

    cmp-long v16, v16, v10

    if-nez v16, :cond_7

    .line 523
    instance-of v0, v4, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object v9, v4

    .line 527
    check-cast v9, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    .line 528
    .local v9, "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    invoke-virtual {v9}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V

    goto :goto_1

    .line 479
    .end local v4    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v5    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v9    # "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_8
    return-void
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 614
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 618
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 619
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 620
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 621
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 622
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 623
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 624
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 625
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 626
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 627
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 628
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 629
    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 630
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 631
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 633
    return-object v0
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 13

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 852
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

    .line 853
    .local v4, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 854
    .local v6, "rawContactId":J
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 857
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 859
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v8

    .line 860
    .local v8, "serviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v9

    .line 861
    .local v9, "servicePackageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 862
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 863
    .local v10, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 864
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-string/jumbo v11, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error sending message to source-app"

    invoke-static {v11, v12, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 850
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

.method private unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 877
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 879
    iput-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 876
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheResult()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    sget-object v1, Lcom/android/contacts/common/model/ContactLoader;->sLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    .line 937
    :goto_0
    return-void

    .line 939
    :cond_0
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 943
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deliverResult(Lcom/android/contacts/common/model/Contact;)V
    .locals 4
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 819
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 820
    :cond_0
    return-void

    .line 823
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 825
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 826
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 828
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 829
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

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 831
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 833
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 837
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_4

    .line 839
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 843
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 815
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 815
    check-cast p1, Lcom/android/contacts/common/model/Contact;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/common/model/Contact;
    .locals 9

    .prologue
    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 335
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 334
    invoke-static {v2, v6}, Lcom/android/contacts/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 336
    .local v5, "uriCurrentFormat":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 337
    .local v0, "cachedResult":Lcom/android/contacts/common/model/Contact;
    const/4 v6, 0x0

    sput-object v6, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 341
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/Contact;->isTapiRcsCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 350
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/contacts/util/ContactLoaderUtils;->isProfileUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->loadProfile(Landroid/content/Context;Z)V

    .line 354
    :cond_1
    invoke-direct {p0, v2, v5}, Lcom/android/contacts/common/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .line 355
    .local v3, "result":Lcom/android/contacts/common/model/Contact;
    const/4 v4, 0x0

    .line 357
    .local v4, "resultIsCached":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 358
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 359
    if-nez v4, :cond_2

    .line 360
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V

    .line 367
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v6, :cond_3

    .line 368
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V

    .line 370
    :cond_3
    if-nez v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 373
    :cond_4
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_5

    .line 374
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V

    .line 378
    :cond_5
    return-object v3

    .line 345
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    :cond_6
    new-instance v3, Lcom/android/contacts/common/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v0}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V

    .line 346
    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    const/4 v4, 0x1

    .restart local v4    # "resultIsCached":Z
    goto :goto_0

    .line 362
    :cond_7
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v6, :cond_2

    .line 363
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_2

    .line 364
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 379
    .end local v0    # "cachedResult":Lcom/android/contacts/common/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 380
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

    invoke-static {v6, v7, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v6, v1}, Lcom/android/contacts/common/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->loadInBackground()Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 927
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 928
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 929
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 926
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_2

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->forceLoad()V

    .line 910
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 921
    return-void
.end method

.method public upgradeToFullContact()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 889
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_0

    .line 890
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 889
    if-eqz v0, :cond_0

    .line 890
    return-void

    .line 892
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 893
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 894
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 895
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 898
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cacheResult()V

    .line 902
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->onContentChanged()V

    .line 887
    return-void
.end method
