.class public Lcom/sonyericsson/conversations/util/ContactLookup;
.super Ljava/lang/Object;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupHolder;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactsAddress;,
        Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;,
        Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;,
        Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;,
        Lcom/sonyericsson/conversations/util/ContactLookup$1;,
        Lcom/sonyericsson/conversations/util/ContactLookup$2;
    }
.end annotation


# instance fields
.field private mContactInformationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInformationExecutor:Ljava/util/concurrent/Executor;

.field private mContactsObserver:Landroid/database/ContentObserver;

.field private mContactsVersions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;",
            ">;"
        }
    .end annotation
.end field

.field private transient mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field private mIsProfileUpdated:Z

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mNeedToRequeryProfileData:Z

.field private mPersonMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileLookupKey:Ljava/lang/String;

.field private mProfileMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileVersion:I

.field private mStrequentMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mStrequentObserver:Landroid/database/ContentObserver;

.field private mThrottler:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationChangeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsVersions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/util/ContactLookup;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileVersion:I

    return v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/util/ContactLookup;)Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mThrottler:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsVersions:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mIsProfileUpdated:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedToRequeryProfileData:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/conversations/util/ContactLookup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/conversations/util/ContactLookup;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileVersion:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/LruCache;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->queryForStrequentContacts()Landroid/util/LruCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getContactVersions()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/util/ContactLookup;)Lcom/sonymobile/forklift/HeavyProperty;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->fetchStrequentContactsAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/util/ContactLookup;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfileVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getUpdatedProfileAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/util/ContactLookup;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "latestUpdatedContacts"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getUpdatedContactsAddress(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 1
    .param p1, "contactsBefore"    # Landroid/util/SparseArray;
    .param p2, "contactsAfter"    # Landroid/util/SparseArray;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->resolveUpdatedContact(Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/conversations/util/ContactLookup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->loadAllContactsInformation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedToRequeryProfileData:Z

    .line 202
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 201
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Landroid/util/LruCache;

    .line 205
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 204
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Landroid/util/LruCache;

    .line 207
    new-instance v0, Landroid/util/LruCache;

    .line 208
    const/16 v1, 0x8

    .line 207
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentMap:Landroid/util/LruCache;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsVersions:Landroid/util/SparseArray;

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mIsProfileUpdated:Z

    .line 220
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationExecutor:Ljava/util/concurrent/Executor;

    .line 268
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$1;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup$1;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsObserver:Landroid/database/ContentObserver;

    .line 275
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$2;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup$2;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentObserver:Landroid/database/ContentObserver;

    .line 467
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 466
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/Set;

    .line 470
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 469
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationChangeListeners:Ljava/util/Set;

    .line 57
    return-void
.end method

.method private fetchStrequentContactsAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/chooser/ChooserTarget;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup$3;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentMap:Landroid/util/LruCache;

    .line 169
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup$3;->byDefault(Ljava/lang/Object;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    return-object v0
.end method

.method public static getContactLedColor(Landroid/content/Context;ZLjava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 933
    const/4 v9, 0x0

    .line 935
    .local v9, "ledColor":I
    const-string/jumbo v0, "Conversations"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmailAddress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", address = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 939
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 940
    if-nez p1, :cond_2

    .line 942
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 943
    const-string/jumbo v2, "somc_phone_lookup_with_light"

    .line 942
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 946
    .local v6, "CONTENT_FILTER_URI":Landroid/net/Uri;
    const-string/jumbo v7, "light_color"

    .line 948
    .local v7, "LIGHT_COLOR":Ljava/lang/String;
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 949
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 951
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 952
    const-string/jumbo v3, "light_color"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 953
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 951
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 954
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 958
    :cond_1
    if-eqz v8, :cond_2

    .line 959
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 964
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "CONTENT_FILTER_URI":Landroid/net/Uri;
    .end local v7    # "LIGHT_COLOR":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v9

    .line 957
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "CONTENT_FILTER_URI":Landroid/net/Uri;
    .restart local v7    # "LIGHT_COLOR":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 958
    if-eqz v8, :cond_3

    .line 959
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 957
    :cond_3
    throw v0
.end method

.method private getContactVersions()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 302
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 304
    .local v6, "contactVersions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 305
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "contact_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "version"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 307
    const-string/jumbo v3, "_id"

    const-string/jumbo v4, " DESC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 304
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 311
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 312
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "Error while querying for contact versions, returned cursor null"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v10, :cond_3

    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 326
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    .line 327
    const-string/jumbo v0, "Error while querying for contact versions"

    invoke-static {v0, v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v6

    .line 329
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    goto :goto_0

    .line 315
    :cond_3
    return-object v6

    .line 317
    :cond_4
    :goto_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    new-instance v8, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;)V

    .line 320
    .local v8, "cv":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    const-string/jumbo v0, "contact_id"

    .line 319
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mId:I

    .line 322
    const-string/jumbo v0, "version"

    .line 321
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mVersion:I

    .line 323
    iget v0, v8, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mId:I

    invoke-virtual {v6, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 329
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "cv":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    if-eqz v7, :cond_5

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_3
    if-eqz v1, :cond_9

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_6
    if-eqz v7, :cond_7

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    :goto_4
    if-eqz v10, :cond_2

    :try_start_8
    throw v10

    :catch_3
    move-exception v10

    goto :goto_4

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_4
    move-exception v2

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    if-eq v1, v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;
    .locals 2

    .prologue
    const-class v0, Lcom/sonyericsson/conversations/util/ContactLookup;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupHolder;->INSTANCE:Lcom/sonyericsson/conversations/util/ContactLookup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 4
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 517
    const-string/jumbo v2, "Address is null or empty"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-object v3

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v1

    .line 524
    .local v1, "profileMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v1, :cond_2

    .line 525
    return-object v1

    .line 529
    .end local v1    # "profileMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Landroid/util/LruCache;

    invoke-virtual {v2, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 530
    .local v0, "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-nez v0, :cond_3

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->queryForPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 532
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Landroid/util/LruCache;

    invoke-virtual {v2, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_3
    return-object v0
.end method

.method private getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->refreshProfilesIfNeeded()V

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    return-object v0

    .line 510
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProfileVersion()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 334
    const/4 v8, -0x1

    .line 335
    .local v8, "profileVersion":I
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 336
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 335
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 337
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 334
    const/4 v0, -0x1

    .line 348
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 345
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 346
    const-string/jumbo v0, "Error while querying for profile version"

    invoke-static {v0, v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    return v8

    .line 348
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    goto :goto_0

    .line 338
    :cond_2
    return v0

    .line 340
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    const-string/jumbo v0, "version"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    goto :goto_1

    .line 348
    :cond_4
    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :goto_2
    if-eqz v9, :cond_1

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v9

    goto :goto_2

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    if-eqz v6, :cond_6

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    :goto_4
    if-eqz v1, :cond_8

    :try_start_8
    throw v1

    :catch_4
    move-exception v2

    if-nez v1, :cond_7

    move-object v1, v2

    goto :goto_4

    :cond_7
    if-eq v1, v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_3
.end method

.method private getStrictNumberComparisonAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 901
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStrictPhonenumberComparisonPrefix()Ljava/lang/String;

    move-result-object v4

    .line 903
    .local v4, "strictPhoneNumberComparisonPrefix":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 904
    if-eqz p2, :cond_1

    .line 905
    const-string/jumbo v7, "[^1234567890]"

    const-string/jumbo v8, ""

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 906
    .local v5, "tmpAddress":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 907
    .local v0, "index":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 908
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 910
    .local v3, "prefix":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "numberPrefixes":[Ljava/lang/String;
    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 912
    .local v1, "numberPrefix":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 913
    return-object v9

    .line 911
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 920
    .end local v0    # "index":I
    .end local v1    # "numberPrefix":Ljava/lang/String;
    .end local v2    # "numberPrefixes":[Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v5    # "tmpAddress":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method private getUpdatedContactsAddress(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "latestUpdatedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v5, "updatedContactsAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Landroid/util/LruCache;

    invoke-virtual {v6}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 286
    .local v4, "personMapValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "latestUpdatedContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;

    .line 287
    .local v2, "latestUpdatedContact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contactMatch$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 288
    .local v0, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    iget-wide v6, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    iget v8, v2, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mId:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 289
    iget-object v6, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->address:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v0    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .end local v1    # "contactMatch$iterator":Ljava/util/Iterator;
    .end local v2    # "latestUpdatedContact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    :cond_2
    return-object v5
.end method

.method private getUpdatedProfileAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mIsProfileUpdated:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "profile"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAllContactsInformation()V
    .locals 15

    .prologue
    .line 842
    const/4 v13, 0x0

    .line 846
    .local v13, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "account_type"

    .line 847
    const-string/jumbo v1, " <> \'"

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    const-string/jumbo v1, "com.sonyericsson.adncontacts"

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    const-string/jumbo v1, "\'"

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, "EXCLUDE_SIM_CONTACTS":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    .line 850
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 851
    const-string/jumbo v4, "contact_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 852
    const-string/jumbo v4, "display_name"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 853
    const-string/jumbo v4, "data1"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 854
    const-string/jumbo v4, "photo_id"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    .line 855
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 849
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 857
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 882
    if-eqz v13, :cond_0

    .line 883
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_0
    return-void

    .line 865
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 866
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 867
    .local v6, "contactId":J
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, "personName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 869
    .local v9, "personAddress":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 870
    .local v10, "photoId":Ljava/lang/String;
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contactId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", personName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 872
    const-string/jumbo v1, "personAddress = "

    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Landroid/util/LruCache;

    .line 875
    new-instance v5, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 876
    const/4 v11, 0x0

    .line 875
    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;)V

    .line 874
    invoke-virtual {v0, v9, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 878
    .end local v6    # "contactId":J
    .end local v8    # "personName":Ljava/lang/String;
    .end local v9    # "personAddress":Ljava/lang/String;
    .end local v10    # "photoId":Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 880
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "Error while querying contact data"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 882
    if-eqz v13, :cond_3

    .line 883
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 841
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void

    .line 882
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v13, :cond_3

    .line 883
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 881
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 882
    if-eqz v13, :cond_5

    .line 883
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_5
    throw v0
.end method

.method private queryForPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 18
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 764
    const-wide/16 v14, -0x1

    .line 765
    .local v14, "contactId":J
    const/4 v8, 0x0

    .line 766
    .local v8, "personName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 767
    .local v9, "personAddress":Ljava/lang/String;
    const/4 v10, 0x0

    .line 769
    .local v10, "photoId":Ljava/lang/String;
    const-string/jumbo v2, "Conversations"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEmailAddress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", address = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 773
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 775
    const/16 v16, 0x0

    .line 776
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_3

    .line 777
    :try_start_0
    const-string/jumbo v13, "vnd.android.cursor.item/email_v2"

    .line 779
    .local v13, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    .line 780
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 781
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string/jumbo v5, "display_name"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string/jumbo v5, "data1"

    const/4 v11, 0x2

    aput-object v5, v4, v11

    .line 782
    const-string/jumbo v5, "photo_id"

    const/4 v11, 0x3

    aput-object v5, v4, v11

    .line 783
    const-string/jumbo v5, "mimetype = ? AND data1 = ?"

    .line 784
    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v13, v6, v11

    const/4 v11, 0x1

    aput-object p2, v6, v11

    .line 785
    const/4 v7, 0x0

    .line 779
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 802
    .end local v13    # "contentType":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v16, :cond_5

    .line 811
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 812
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 813
    .end local v14    # "contactId":J
    .local v6, "contactId":J
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 814
    .local v8, "personName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 815
    .local v9, "personAddress":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 817
    .local v10, "photoId":Ljava/lang/String;
    const-string/jumbo v2, "Conversations"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contactId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", personName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 819
    const-string/jumbo v4, ", personAddress = "

    .line 818
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 823
    .end local v8    # "personName":Ljava/lang/String;
    .end local v9    # "personAddress":Ljava/lang/String;
    .end local v10    # "photoId":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 826
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/conversations/util/ContactLookup;->getStrictNumberComparisonAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 834
    :goto_2
    new-instance v5, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;)V

    return-object v5

    .line 787
    .end local v6    # "contactId":J
    .local v8, "personName":Ljava/lang/String;
    .local v9, "personAddress":Ljava/lang/String;
    .local v10, "photoId":Ljava/lang/String;
    .restart local v14    # "contactId":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mLookupUri:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 792
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 794
    const-string/jumbo v5, "_id"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    .line 795
    const-string/jumbo v5, "display_name"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    .line 796
    const-string/jumbo v5, "number"

    const/4 v11, 0x2

    aput-object v5, v4, v11

    .line 797
    const-string/jumbo v5, "photo_id"

    const/4 v11, 0x3

    aput-object v5, v4, v11

    .line 798
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 793
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v16

    .local v16, "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 822
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-wide v6, v14

    .line 823
    .end local v8    # "personName":Ljava/lang/String;
    .end local v9    # "personAddress":Ljava/lang/String;
    .end local v10    # "photoId":Ljava/lang/String;
    .end local v14    # "contactId":J
    .restart local v6    # "contactId":J
    :goto_3
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 822
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 828
    :catch_0
    move-exception v17

    .line 830
    .local v17, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v2, "Error while querying profile contact data"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 828
    .end local v6    # "contactId":J
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v8    # "personName":Ljava/lang/String;
    .restart local v9    # "personAddress":Ljava/lang/String;
    .restart local v10    # "photoId":Ljava/lang/String;
    .restart local v14    # "contactId":J
    .local v16, "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    move-wide v6, v14

    .end local v14    # "contactId":J
    .restart local v6    # "contactId":J
    goto :goto_4

    .line 822
    .end local v8    # "personName":Ljava/lang/String;
    .end local v9    # "personAddress":Ljava/lang/String;
    .end local v10    # "photoId":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    goto :goto_3

    .end local v6    # "contactId":J
    .restart local v8    # "personName":Ljava/lang/String;
    .restart local v9    # "personAddress":Ljava/lang/String;
    .restart local v10    # "photoId":Ljava/lang/String;
    .restart local v14    # "contactId":J
    :cond_4
    move-wide v6, v14

    .end local v14    # "contactId":J
    .restart local v6    # "contactId":J
    goto :goto_1

    .end local v6    # "contactId":J
    .restart local v14    # "contactId":J
    :cond_5
    move-wide v6, v14

    .end local v14    # "contactId":J
    .restart local v6    # "contactId":J
    goto :goto_2
.end method

.method private queryForProfile()V
    .locals 25

    .prologue
    .line 661
    const/16 v19, 0x0

    .line 662
    .local v19, "cursor":Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 664
    .local v23, "lookupUri":Landroid/net/Uri;
    const-wide/16 v20, -0x1

    .line 665
    .local v20, "contactId":J
    const/16 v24, 0x0

    .line 667
    .local v24, "personName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 669
    .local v8, "photoId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 670
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedToRequeryProfileData:Z

    .line 671
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    .line 675
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 676
    const/4 v9, 0x4

    new-array v4, v9, [Ljava/lang/String;

    .line 677
    const-string/jumbo v9, "_id"

    const/4 v11, 0x0

    aput-object v9, v4, v11

    .line 678
    const-string/jumbo v9, "display_name"

    const/4 v11, 0x1

    aput-object v9, v4, v11

    .line 679
    const-string/jumbo v9, "photo_id"

    const/4 v11, 0x2

    aput-object v9, v4, v11

    .line 680
    const-string/jumbo v9, "lookup"

    const/4 v11, 0x3

    aput-object v9, v4, v11

    .line 681
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 675
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 682
    .local v19, "cursor":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 683
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 684
    .end local v20    # "contactId":J
    .local v4, "contactId":J
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    .line 685
    .end local v24    # "personName":Ljava/lang/String;
    .local v6, "personName":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_2
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 686
    .local v8, "photoId":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 687
    .local v7, "personAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Landroid/util/LruCache;

    new-instance v3, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 688
    const/4 v9, 0x1

    .line 687
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;)V

    invoke-virtual {v2, v7, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    .line 690
    invoke-static {v4, v5, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v23

    .line 695
    .end local v7    # "personAddress":Ljava/lang/String;
    .end local v8    # "photoId":Ljava/lang/String;
    .end local v23    # "lookupUri":Landroid/net/Uri;
    :goto_0
    if-eqz v19, :cond_0

    .line 696
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 697
    .end local v19    # "cursor":Landroid/database/Cursor;
    :goto_1
    const/16 v19, 0x0

    .line 702
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    if-nez v23, :cond_4

    .line 703
    :cond_1
    return-void

    .end local v4    # "contactId":J
    .end local v6    # "personName":Ljava/lang/String;
    .local v8, "photoId":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "contactId":J
    .restart local v23    # "lookupUri":Landroid/net/Uri;
    .restart local v24    # "personName":Ljava/lang/String;
    :cond_2
    move-object/from16 v6, v24

    .restart local v6    # "personName":Ljava/lang/String;
    move-wide/from16 v4, v20

    .line 682
    .end local v20    # "contactId":J
    .restart local v4    # "contactId":J
    goto :goto_0

    .line 692
    .end local v4    # "contactId":J
    .end local v6    # "personName":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "contactId":J
    :catch_0
    move-exception v22

    .local v22, "e":Ljava/lang/Exception;
    move-object/from16 v6, v24

    .restart local v6    # "personName":Ljava/lang/String;
    move-wide/from16 v4, v20

    .line 693
    .end local v8    # "photoId":Ljava/lang/String;
    .end local v20    # "contactId":J
    .end local v24    # "personName":Ljava/lang/String;
    .restart local v4    # "contactId":J
    :goto_2
    :try_start_3
    const-string/jumbo v2, "Error while querying profile contact basic data"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 695
    if-eqz v19, :cond_0

    .line 696
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 694
    .end local v4    # "contactId":J
    .end local v6    # "personName":Ljava/lang/String;
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v8    # "photoId":Ljava/lang/String;
    .restart local v20    # "contactId":J
    .restart local v24    # "personName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v6, v24

    .restart local v6    # "personName":Ljava/lang/String;
    move-wide/from16 v4, v20

    .line 695
    .end local v8    # "photoId":Ljava/lang/String;
    .end local v20    # "contactId":J
    .end local v24    # "personName":Ljava/lang/String;
    .restart local v4    # "contactId":J
    :goto_3
    if-eqz v19, :cond_3

    .line 696
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 697
    const/16 v19, 0x0

    .line 694
    :cond_3
    throw v2

    .line 708
    .end local v23    # "lookupUri":Landroid/net/Uri;
    :cond_4
    :try_start_4
    const-string/jumbo v2, "entities"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 709
    .local v10, "entityUri":Landroid/net/Uri;
    if-eqz v10, :cond_5

    .line 710
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const-string/jumbo v2, "data1"

    const/4 v3, 0x0

    aput-object v2, v11, v3

    .line 711
    const-string/jumbo v12, "mimetype=?"

    .line 712
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    const/4 v3, 0x0

    aput-object v2, v13, v3

    const-string/jumbo v14, "raw_contact_id"

    .line 710
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 714
    :cond_5
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 716
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 717
    .restart local v7    # "personAddress":Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Landroid/util/LruCache;

    new-instance v11, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 719
    const/16 v17, 0x1

    .line 718
    const/16 v18, 0x0

    move-wide v12, v4

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;)V

    invoke-virtual {v2, v7, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_6

    .line 725
    .end local v7    # "personAddress":Ljava/lang/String;
    :cond_7
    if-eqz v19, :cond_8

    .line 726
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 727
    .end local v10    # "entityUri":Landroid/net/Uri;
    :goto_4
    const/16 v19, 0x0

    .line 733
    :cond_8
    :try_start_5
    const-string/jumbo v2, "entities"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 734
    .restart local v10    # "entityUri":Landroid/net/Uri;
    if-eqz v10, :cond_9

    .line 735
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const-string/jumbo v2, "data1"

    const/4 v3, 0x0

    aput-object v2, v11, v3

    .line 736
    const-string/jumbo v12, "mimetype=?"

    .line 737
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    const/4 v3, 0x0

    aput-object v2, v13, v3

    const-string/jumbo v14, "raw_contact_id"

    .line 735
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 739
    :cond_9
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 741
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 742
    .restart local v7    # "personAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Landroid/util/LruCache;

    new-instance v11, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 743
    const/16 v17, 0x1

    .line 742
    const/16 v18, 0x0

    move-wide v12, v4

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;)V

    invoke-virtual {v2, v7, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v2

    if-nez v2, :cond_a

    .line 749
    .end local v7    # "personAddress":Ljava/lang/String;
    :cond_b
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 660
    .end local v10    # "entityUri":Landroid/net/Uri;
    :cond_c
    :goto_5
    return-void

    .line 722
    :catch_1
    move-exception v22

    .line 723
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v2, "Error while querying profile contact phone data"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 725
    if-eqz v19, :cond_8

    .line 726
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 724
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 725
    if-eqz v19, :cond_d

    .line 726
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 727
    const/16 v19, 0x0

    .line 724
    :cond_d
    throw v2

    .line 746
    :catch_2
    move-exception v22

    .line 747
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 749
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 748
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    .line 749
    if-eqz v19, :cond_e

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_e
    throw v2

    .line 694
    .end local v6    # "personName":Ljava/lang/String;
    .restart local v8    # "photoId":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "lookupUri":Landroid/net/Uri;
    .restart local v24    # "personName":Ljava/lang/String;
    :catchall_3
    move-exception v2

    move-object/from16 v6, v24

    .restart local v6    # "personName":Ljava/lang/String;
    goto/16 :goto_3

    .end local v8    # "photoId":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v24    # "personName":Ljava/lang/String;
    :catchall_4
    move-exception v2

    goto/16 :goto_3

    .line 692
    .end local v6    # "personName":Ljava/lang/String;
    .restart local v8    # "photoId":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v24    # "personName":Ljava/lang/String;
    :catch_3
    move-exception v22

    .restart local v22    # "e":Ljava/lang/Exception;
    move-object/from16 v6, v24

    .restart local v6    # "personName":Ljava/lang/String;
    goto/16 :goto_2

    .end local v8    # "photoId":Ljava/lang/String;
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "personName":Ljava/lang/String;
    :catch_4
    move-exception v22

    .restart local v22    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v4    # "contactId":J
    .end local v6    # "personName":Ljava/lang/String;
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v8    # "photoId":Ljava/lang/String;
    .restart local v20    # "contactId":J
    .restart local v24    # "personName":Ljava/lang/String;
    :cond_f
    move-object/from16 v6, v24

    .restart local v6    # "personName":Ljava/lang/String;
    move-wide/from16 v4, v20

    .end local v20    # "contactId":J
    .restart local v4    # "contactId":J
    goto/16 :goto_0
.end method

.method private queryForStrequentContacts()Landroid/util/LruCache;
    .locals 24
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    const/4 v14, 0x0

    .line 569
    .local v14, "cursor":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 570
    .local v19, "phoneCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 572
    .local v15, "lookupUri":Landroid/net/Uri;
    const-wide/16 v12, -0x1

    .line 573
    .local v12, "contactId":J
    const/16 v17, 0x0

    .line 574
    .local v17, "personName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 575
    .local v16, "personAddress":Ljava/lang/String;
    const/16 v20, 0x0

    .line 576
    .local v20, "photoUri":Ljava/lang/String;
    const/16 v18, 0x0

    .line 577
    .local v18, "personNumber":Ljava/lang/String;
    const/4 v11, 0x0

    .line 579
    .local v11, "contactIcon":Landroid/graphics/drawable/Icon;
    const/4 v10, 0x0

    .line 580
    .local v10, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    const/16 v21, 0x0

    .line 582
    .local v21, "score":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentMap:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 584
    new-instance v8, Landroid/content/ComponentName;

    .line 585
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 586
    const-class v5, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 584
    invoke-direct {v8, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v8, "targetComponentName":Landroid/content/ComponentName;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .line 597
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "display_name"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "photo_uri"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 598
    const-string/jumbo v5, "lookup"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "times_contacted"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 599
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 596
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 600
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 602
    .end local v10    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v11    # "contactIcon":Landroid/graphics/drawable/Icon;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "personAddress":Ljava/lang/String;
    .end local v17    # "personName":Ljava/lang/String;
    .end local v18    # "personNumber":Ljava/lang/String;
    .end local v19    # "phoneCursor":Landroid/database/Cursor;
    .end local v20    # "photoUri":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 603
    const-string/jumbo v2, "display_name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 604
    .local v17, "personName":Ljava/lang/String;
    const-string/jumbo v2, "photo_uri"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 605
    .local v20, "photoUri":Ljava/lang/String;
    const-string/jumbo v2, "lookup"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 607
    .local v16, "personAddress":Ljava/lang/String;
    const-string/jumbo v2, "times_contacted"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 606
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 608
    .local v22, "timesContacted":I
    if-lez v22, :cond_4

    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v5, 0x4f000000

    div-float v21, v2, v5

    .line 610
    :goto_1
    if-nez v20, :cond_5

    .line 611
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 612
    const v5, 0x7f0200a8

    .line 610
    invoke-static {v2, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 614
    .local v11, "contactIcon":Landroid/graphics/drawable/Icon;
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v12, v13, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v15

    .line 616
    .local v15, "lookupUri":Landroid/net/Uri;
    if-nez v15, :cond_6

    .line 617
    const/4 v2, 0x0

    .line 649
    if-eqz v14, :cond_0

    .line 650
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 651
    const/4 v14, 0x0

    .line 617
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_0
    return-object v2

    .end local v22    # "timesContacted":I
    .restart local v10    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .local v11, "contactIcon":Landroid/graphics/drawable/Icon;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .local v15, "lookupUri":Landroid/net/Uri;
    .local v16, "personAddress":Ljava/lang/String;
    .local v17, "personName":Ljava/lang/String;
    .restart local v18    # "personNumber":Ljava/lang/String;
    .restart local v19    # "phoneCursor":Landroid/database/Cursor;
    .local v20, "photoUri":Ljava/lang/String;
    :cond_1
    move-object v4, v10

    .line 649
    .end local v10    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v11    # "contactIcon":Landroid/graphics/drawable/Icon;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "personAddress":Ljava/lang/String;
    .end local v17    # "personName":Ljava/lang/String;
    .end local v18    # "personNumber":Ljava/lang/String;
    .end local v19    # "phoneCursor":Landroid/database/Cursor;
    .end local v20    # "photoUri":Ljava/lang/String;
    .local v4, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :cond_2
    :goto_3
    if-eqz v14, :cond_3

    .line 650
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 651
    const/4 v14, 0x0

    .line 654
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentMap:Landroid/util/LruCache;

    return-object v2

    .line 609
    .end local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .local v16, "personAddress":Ljava/lang/String;
    .local v17, "personName":Ljava/lang/String;
    .local v20, "photoUri":Ljava/lang/String;
    .restart local v22    # "timesContacted":I
    :cond_4
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    goto :goto_1

    .line 612
    :cond_5
    :try_start_1
    invoke-static/range {v20 .. v20}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .local v11, "contactIcon":Landroid/graphics/drawable/Icon;
    goto :goto_2

    .line 621
    .local v15, "lookupUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v2, "entities"

    .line 620
    invoke-static {v15, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 625
    .local v3, "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "data1"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 626
    const-string/jumbo v5, "mimetype=?"

    .line 627
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "vnd.android.cursor.item/phone_v2"

    const/16 v23, 0x0

    aput-object v7, v6, v23

    .line 628
    const-string/jumbo v7, "raw_contact_id"

    .line 625
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v19

    .line 631
    .local v19, "phoneCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_8

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 632
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 633
    .local v18, "personNumber":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 634
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v9, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "person_number"

    move-object/from16 v0, v18

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v4, Landroid/service/chooser/ChooserTarget;

    move-object/from16 v5, v17

    move-object v6, v11

    move/from16 v7, v21

    invoke-direct/range {v4 .. v9}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    .restart local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentMap:Landroid/util/LruCache;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 641
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v18    # "personNumber":Ljava/lang/String;
    :goto_4
    if-eqz v19, :cond_7

    .line 642
    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 643
    const/16 v19, 0x0

    .line 646
    .end local v19    # "phoneCursor":Landroid/database/Cursor;
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v10, v4

    .end local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .local v10, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    goto/16 :goto_0

    .end local v10    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .restart local v19    # "phoneCursor":Landroid/database/Cursor;
    :cond_8
    move-object v4, v10

    .line 631
    .restart local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    goto :goto_4

    .line 640
    .end local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :catchall_0
    move-exception v2

    move-object v4, v10

    .line 641
    .restart local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :goto_5
    if-eqz v19, :cond_9

    .line 642
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 643
    const/16 v19, 0x0

    .line 640
    .end local v19    # "phoneCursor":Landroid/database/Cursor;
    :cond_9
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 648
    :catchall_1
    move-exception v2

    .line 649
    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v11    # "contactIcon":Landroid/graphics/drawable/Icon;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "personAddress":Ljava/lang/String;
    .end local v17    # "personName":Ljava/lang/String;
    .end local v20    # "photoUri":Ljava/lang/String;
    .end local v22    # "timesContacted":I
    :goto_6
    if-eqz v14, :cond_a

    .line 650
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 651
    const/4 v14, 0x0

    .line 648
    :cond_a
    throw v2

    .end local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :catchall_2
    move-exception v2

    move-object v4, v10

    .restart local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    goto :goto_6

    .line 640
    .restart local v3    # "entityUri":Landroid/net/Uri;
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v11    # "contactIcon":Landroid/graphics/drawable/Icon;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "lookupUri":Landroid/net/Uri;
    .restart local v16    # "personAddress":Ljava/lang/String;
    .restart local v17    # "personName":Ljava/lang/String;
    .restart local v18    # "personNumber":Ljava/lang/String;
    .restart local v19    # "phoneCursor":Landroid/database/Cursor;
    .restart local v20    # "photoUri":Ljava/lang/String;
    .restart local v22    # "timesContacted":I
    :catchall_3
    move-exception v2

    goto :goto_5

    .end local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v18    # "personNumber":Ljava/lang/String;
    :cond_b
    move-object v4, v10

    .restart local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    goto :goto_4

    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v22    # "timesContacted":I
    .local v10, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .local v11, "contactIcon":Landroid/graphics/drawable/Icon;
    .local v15, "lookupUri":Landroid/net/Uri;
    .local v16, "personAddress":Ljava/lang/String;
    .local v17, "personName":Ljava/lang/String;
    .local v18, "personNumber":Ljava/lang/String;
    .local v19, "phoneCursor":Landroid/database/Cursor;
    .local v20, "photoUri":Ljava/lang/String;
    :cond_c
    move-object v4, v10

    .restart local v4    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    goto/16 :goto_3
.end method

.method private resolveUpdatedContact(Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "contactsBefore":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    .local p2, "contactsAfter":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    const/4 v10, 0x0

    .line 380
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 381
    .local v1, "before":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 382
    .local v0, "after":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v3, "contactVersions":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 385
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 386
    .local v7, "key":I
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;

    .line 387
    .local v5, "cvBefore":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;

    .line 389
    .local v4, "cvAfter":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    if-nez v4, :cond_1

    .line 390
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    :goto_1
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 384
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget v8, v4, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mVersion:I

    iget v9, v5, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mVersion:I

    if-eq v8, v9, :cond_0

    .line 392
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v4    # "cvAfter":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    .end local v5    # "cvBefore":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    .end local v7    # "key":I
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 398
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;

    .line 399
    .local v2, "contactVersion":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget v8, v2, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;->mId:I

    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/util/ContactLookup;->retrieveContactPhone(I)V

    .line 403
    .end local v2    # "contactVersion":Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
    :cond_3
    return-object v3
.end method

.method private retrieveContactPhone(I)V
    .locals 13
    .param p1, "contactId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 353
    const-string/jumbo v6, ""

    .line 354
    .local v6, "contactNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    .line 355
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 356
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "data1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 357
    const-string/jumbo v3, "contact_id = ? "

    .line 358
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x0

    .line 354
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 359
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 360
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 361
    const-string/jumbo v0, "Error while querying for phone"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v9, :cond_3

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 369
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 370
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    .line 371
    const-string/jumbo v0, "Error while querying for phone"

    invoke-static {v0, v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, v11, v6}, Lcom/sonyericsson/conversations/util/ContactLookup;->getPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 352
    return-void

    .line 373
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    goto :goto_0

    .line 363
    :cond_3
    return-void

    .line 365
    :cond_4
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    const-string/jumbo v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 373
    :cond_5
    if-eqz v7, :cond_6

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_1
    if-eqz v9, :cond_2

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v9

    goto :goto_1

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    if-eqz v7, :cond_7

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    :goto_3
    if-eqz v1, :cond_9

    :try_start_8
    throw v1

    :catch_4
    move-exception v2

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    if-eq v1, v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method


# virtual methods
.method public addContactInformationChangeListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method public addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public declared-synchronized cleanup()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 182
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContactUriFromPhoneNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 491
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 492
    .local v0, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 493
    :cond_0
    return-object v6

    .line 495
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultProfile()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->refreshProfilesIfNeeded()V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    return-object v0
.end method

.method public getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 1
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    return-object v0
.end method

.method public getSortedStrequentContacts()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentMap:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 551
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/chooser/ChooserTarget;>;"
    new-instance v1, Lcom/sonyericsson/conversations/util/ContactLookup$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/util/ContactLookup$4;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 558
    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadSynchronously"    # Z

    .prologue
    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mStrequentObserver:Landroid/database/ContentObserver;

    .line 150
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "android.software.managed_users"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 152
    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mLookupUri:Landroid/net/Uri;

    .line 155
    if-eqz p2, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->loadAllContactsInformation()V

    .line 157
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getContactVersions()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactsVersions:Landroid/util/SparseArray;

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfileVersion()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileVersion:I

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->fetchStrequentContactsAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadSyncWith(Lcom/sonymobile/forklift/Forklift;)Ljava/lang/Object;

    .line 164
    :goto_1
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mThrottler:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 147
    return-void

    .line 154
    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;)V

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->fetchStrequentContactsAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshProfilesIfNeeded()V
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedToRequeryProfileData:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->queryForProfile()V

    .line 537
    :cond_0
    return-void
.end method

.method public removeContactInformationChangeListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContactInformationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method
