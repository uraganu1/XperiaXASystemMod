.class Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/common/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_LOAD_DATA:I = 0x0

.field private static final MESSAGE_PROCESS_BROADCAST_INTENT:I = 0x1

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;

.field private static mBannedAction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPresetAccounts:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsWithRCS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenAccounts:[Ljava/lang/String;

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private mNameIdFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mRCSAccounts:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mPresetAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findInPresetAccountList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 206
    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 216
    const-wide/16 v0, 0x1

    const-string/jumbo v2, "xxx"

    .line 215
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 226
    sput-object v3, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBannedAction:Ljava/util/HashMap;

    .line 227
    sput-object v3, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mPresetAccounts:[Ljava/lang/String;

    .line 270
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;

    invoke-direct {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 322
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManager;-><init>()V

    .line 221
    iput-object v5, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mHiddenAccounts:[Ljava/lang/String;

    .line 222
    iput-object v5, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mRCSAccounts:[Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 230
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountsWithRCS:Ljava/util/List;

    .line 231
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 232
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 233
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 235
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 234
    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 243
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 249
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 257
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 323
    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 324
    new-instance v2, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 325
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mHiddenAccounts:[Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mRCSAccounts:[Ljava/lang/String;

    .line 328
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 330
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 331
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 332
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 348
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-direct {v2, v5}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 368
    invoke-static {v6, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/BannedAction;->readActions(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBannedAction:Ljava/util/HashMap;

    .line 374
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getPresetProrityAccounts()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mPresetAccounts:[Ljava/lang/String;

    .line 322
    return-void
.end method

.method private addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .local p3, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 664
    .local v0, "accountsForType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-nez v0, :cond_0

    .line 665
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 667
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-void
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 960
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 961
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v2

    .line 962
    .local v2, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType;

    .line 963
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v4, :cond_0

    .line 964
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 966
    sget-object v5, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 967
    sget-object v5, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    const-string/jumbo v7, " inviteClass="

    .line 967
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    .line 967
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 971
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 974
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 4
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 677
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 678
    .local v0, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    return-object v0

    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    .end local v0    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static findInPresetAccountList(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v0, -0x1

    .line 379
    .local v0, "found":I
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mPresetAccounts:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mPresetAccounts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 381
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mPresetAccounts:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    move v0, v1

    .line 387
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 380
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 989
    .local v2, "allInvitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 990
    sget-object v9, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    return-object v9

    .line 993
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 994
    .local v8, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 996
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 997
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 998
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 999
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 1003
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    sget-object v9, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 1002
    invoke-static {v0, v9}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 1004
    .local v5, "invitableIntent":Landroid/content/Intent;
    if-nez v5, :cond_2

    .line 1005
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1009
    :cond_2
    const/high16 v9, 0x10000

    .line 1008
    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1010
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_3

    .line 1013
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1019
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1020
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1024
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v5    # "invitableIntent":Landroid/content/Intent;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    return-object v9
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 916
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method

.method private getKDDIAccountIfNeeded(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    if-eqz v2, :cond_0

    .line 893
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    return-object v2

    .line 895
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/model/KddiAccountType;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 896
    const-string/jumbo v4, "com.kddi.android.auoneidsetting"

    .line 895
    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/model/KddiAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 897
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 899
    .local v0, "auths":[Landroid/accounts/AuthenticatorDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 900
    const-string/jumbo v2, "com.kddi.android.auoneidsetting"

    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    aget-object v3, v0, v1

    iget v3, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iput v3, v2, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 902
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    aget-object v3, v0, v1

    iget v3, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iput v3, v2, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 906
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mKDDIFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    return-object v2

    .line 899
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isAccountInInvisibleList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 839
    if-eqz p1, :cond_1

    .line 840
    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mHiddenAccounts:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 841
    .local v0, "hiddenAccount":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 842
    const/4 v1, 0x1

    return v1

    .line 840
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "hiddenAccount":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private isRCSAccount(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 850
    if-eqz p1, :cond_1

    .line 851
    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mRCSAccounts:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 852
    .local v0, "hiddenAccount":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 853
    const/4 v1, 0x1

    return v1

    .line 851
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "hiddenAccount":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private resolveFallbackAccountTypes(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 825
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType;
    const-string/jumbo v1, "com.kddi.ast.auoneid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getKDDIAccountIfNeeded(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 828
    :cond_0
    const-string/jumbo v1, "com.whitepages.nameid.account"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 829
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mNameIdFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    if-nez v1, :cond_1

    .line 830
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 831
    const-string/jumbo v3, "com.whitepages.nameid.account"

    .line 830
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mNameIdFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mNameIdFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 835
    :cond_2
    return-object v0
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 412
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 413
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    return-void
.end method

.method public getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "accountTypeWithDataSet"    # Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 789
    monitor-enter p0

    .line 799
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;->isDocomoProfileAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;->getDocomoAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object p1

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 806
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-nez v0, :cond_1

    .line 807
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->resolveFallbackAccountTypes(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    monitor-exit p0

    .line 809
    return-object v0

    .line 789
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1030
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1031
    .local v0, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    monitor-enter p0

    .line 1032
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "type$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType;

    .line 1037
    .local v1, "type":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVideoGroupCallingAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1040
    iget-object v3, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1044
    iget-object v3, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isRCSAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1048
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1049
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1031
    .end local v1    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "type$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "type$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 1053
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 1
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 692
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public getAccounts(ZLjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "contactWritableOnly"    # Z
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 717
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v3, "availableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 720
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :goto_0
    monitor-enter p0

    .line 721
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 722
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const/4 v5, 0x0

    .line 724
    .local v5, "isBannedAction":Z
    sget-object v6, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBannedAction:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 725
    .local v4, "bannedActionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 726
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 729
    .end local v5    # "isBannedAction":Z
    :cond_1
    if-nez v5, :cond_0

    .line 730
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 720
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v4    # "bannedActionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 718
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .restart local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    goto :goto_0

    .restart local v1    # "account$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit p0

    .line 735
    return-object v3
.end method

.method public getAccountsWithRCS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 740
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountsWithRCS:Ljava/util/List;

    return-object v0
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 749
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 760
    const/4 v0, 0x0

    .line 762
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 765
    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v3

    .line 764
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType;

    .line 766
    .local v1, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {v1, p3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_0
    monitor-exit p0

    .line 771
    if-nez v0, :cond_1

    .line 773
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v2, p3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 776
    :cond_1
    if-nez v0, :cond_2

    .line 777
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_2
    return-object v0

    .line 762
    .end local v1    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v0    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 921
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 935
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 937
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 948
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 942
    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getWithoutSimAccounts(Z)Ljava/util/List;
    .locals 5
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 701
    .local v3, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v2, "rtnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 704
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 705
    .local v0, "dataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 706
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "dataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method protected loadAccountsInBackground()V
    .locals 44

    .prologue
    .line 430
    const-string/jumbo v39, "ContactsPerf"

    const/16 v40, 0x3

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 431
    const-string/jumbo v39, "ContactsPerf"

    const-string/jumbo v40, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    new-instance v37, Landroid/util/TimingLogger;

    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v40, "loadAccountsInBackground"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v37, "timings":Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v30

    .line 435
    .local v30, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 439
    .local v32, "startTimeWall":J
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 444
    .local v10, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 446
    .local v9, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 447
    .local v14, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 448
    .local v15, "allAccountsWithRCS":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 449
    .local v19, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    .line 450
    .local v28, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v27

    .line 452
    .local v27, "extensionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v16, v0

    .line 454
    .local v16, "am":Landroid/accounts/AccountManager;
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v36

    .line 455
    .local v36, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {v16 .. v16}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v18

    .line 457
    .local v18, "auths":[Landroid/accounts/AuthenticatorDescription;
    const/16 v39, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v40, v0

    :goto_0
    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_16

    aget-object v34, v36, v39

    .line 458
    .local v34, "sync":Landroid/content/SyncAdapterType;
    const-string/jumbo v41, "com.android.contacts"

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 457
    :cond_1
    :goto_1
    add-int/lit8 v39, v39, 0x1

    goto :goto_0

    .line 465
    :cond_2
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 466
    .local v38, "type":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v17

    .line 467
    .local v17, "auth":Landroid/accounts/AuthenticatorDescription;
    if-nez v17, :cond_5

    .line 469
    sget-object v41, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "No authenticator found for type="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", ignoring it."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 570
    .end local v17    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v18    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v34    # "sync":Landroid/content/SyncAdapterType;
    .end local v36    # "syncs":[Landroid/content/SyncAdapterType;
    .end local v38    # "type":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 572
    .local v20, "e":Ljava/lang/Exception;
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Problem loading accounts: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v39, "Loaded account types"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v13

    .line 579
    .local v13, "accounts":[Landroid/accounts/Account;
    const/16 v39, 0x0

    array-length v0, v13

    move/from16 v40, v0

    :goto_2
    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_22

    aget-object v4, v13, v39

    .line 581
    .local v4, "account":Landroid/accounts/Account;
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVideoGroupCallingAccount(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1c

    .line 579
    :cond_4
    add-int/lit8 v39, v39, 0x1

    goto :goto_2

    .line 475
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v13    # "accounts":[Landroid/accounts/Account;
    .restart local v17    # "auth":Landroid/accounts/AuthenticatorDescription;
    .restart local v18    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .restart local v34    # "sync":Landroid/content/SyncAdapterType;
    .restart local v36    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v38    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static/range {v38 .. v38}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->isSonyAccountType(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 476
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    .local v5, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :goto_3
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isInitialized()Z

    move-result v41

    if-nez v41, :cond_15

    .line 514
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isEmbedded()Z

    move-result v41

    if-eqz v41, :cond_1

    .line 515
    new-instance v39, Ljava/lang/IllegalStateException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Problem initializing embedded type "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 516
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->getClass()Ljava/lang/Class;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v41

    .line 515
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 477
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_6
    const-string/jumbo v41, "com.google"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 478
    new-instance v5, Lcom/android/contacts/common/model/account/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/common/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_3

    .line 479
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_7
    invoke-static/range {v38 .. v38}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 480
    new-instance v5, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_3

    .line 481
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_8
    invoke-static/range {v38 .. v38}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 482
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v5, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 483
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_9
    invoke-static/range {v38 .. v38}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->isSupportedAccount(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 484
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    move-object/from16 v2, v42

    invoke-direct {v5, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 485
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_a
    const-string/jumbo v41, "vnd.android.cursor.item/vnd.sonyericsson.syncml.account"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 486
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/SyncmlAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/SyncmlAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 487
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_b
    const-string/jumbo v41, "vnd.android.cursor.item/vnd.sonyericsson.community.sync.account"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 488
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 489
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_c
    invoke-static/range {v38 .. v38}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->isDocomoAccountType(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 490
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 491
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_d
    const-string/jumbo v41, "com.moxier.sonyericsson.mail"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 492
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/MoxierAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/MoxierAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 493
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_e
    const-string/jumbo v41, "com.kddi.ast.auoneid"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 494
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/KddiAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/KddiAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 495
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_f
    invoke-static/range {v38 .. v38}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVerizonCloudAccountType(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_10

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 501
    :cond_10
    invoke-static/range {v38 .. v38}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVerizonAccountType(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_12

    .line 502
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    move-object/from16 v2, v42

    invoke-direct {v5, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 500
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_11
    new-instance v5, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 503
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_12
    const-string/jumbo v41, "com.whitepages.nameid.account"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 504
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 507
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_13
    sget-boolean v41, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v41, :cond_14

    .line 508
    sget-object v41, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Registering external account type="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 509
    const-string/jumbo v43, ", packageName="

    .line 508
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 509
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 508
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_14
    new-instance v5, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_3

    .line 523
    :cond_15
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iput-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 524
    move-object/from16 v0, v17

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v41, v0

    move/from16 v0, v41

    iput v0, v5, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 525
    move-object/from16 v0, v17

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v41, v0

    move/from16 v0, v41

    iput v0, v5, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 527
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 531
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v41

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 535
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v17    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v34    # "sync":Landroid/content/SyncAdapterType;
    .end local v38    # "type":Ljava/lang/String;
    :cond_16
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    move-result v39

    if-nez v39, :cond_3

    .line 536
    sget-boolean v39, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v39, :cond_17

    .line 537
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Registering "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " extension packages"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_17
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "extensionPackage$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 541
    .local v21, "extensionPackage":Ljava/lang/String;
    new-instance v6, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    move/from16 v2, v40

    invoke-direct {v6, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 542
    .local v6, "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->isInitialized()Z

    move-result v39

    if-eqz v39, :cond_18

    .line 546
    invoke-virtual {v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->hasContactsMetadata()Z

    move-result v39

    if-nez v39, :cond_19

    .line 548
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Skipping extension package "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " because"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 549
    const-string/jumbo v41, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    .line 548
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 553
    :cond_19
    iget-object v0, v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 555
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Skipping extension package "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " because"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 556
    const-string/jumbo v41, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    .line 555
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 557
    const-string/jumbo v41, " attribute"

    .line 555
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 561
    :cond_1a
    sget-boolean v39, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v39, :cond_1b

    .line 562
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Registering extension package account type="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 563
    iget-object v0, v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 562
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 563
    const-string/jumbo v41, ", dataSet="

    .line 562
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 563
    iget-object v0, v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 562
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 564
    const-string/jumbo v41, ", packageName="

    .line 562
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 585
    .end local v6    # "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    .end local v18    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v21    # "extensionPackage":Ljava/lang/String;
    .end local v26    # "extensionPackage$iterator":Ljava/util/Iterator;
    .end local v36    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v13    # "accounts":[Landroid/accounts/Account;
    :cond_1c
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_4

    .line 588
    const/16 v35, 0x0

    .line 590
    .local v35, "syncable":Z
    :try_start_2
    const-string/jumbo v41, "com.android.contacts"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v41

    if-lez v41, :cond_21

    const/16 v35, 0x1

    .line 597
    :goto_5
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->isDocomoAccountType(Ljava/lang/String;)Z

    move-result v29

    .line 599
    .local v29, "isDocomoAccount":Z
    if-nez v35, :cond_1d

    if-eqz v29, :cond_4

    .line 600
    :cond_1d
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 601
    .local v8, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-eqz v8, :cond_4

    .line 604
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "accountType$iterator":Ljava/util/Iterator;
    :cond_1e
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType;

    .line 605
    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v12, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 606
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v41, v0

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v42, v0

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 605
    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v12, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .local v12, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isRCSAccount(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1f

    .line 609
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_1f
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v41

    if-eqz v41, :cond_20

    .line 612
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_20
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v41

    if-eqz v41, :cond_1e

    .line 615
    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 590
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v7    # "accountType$iterator":Ljava/util/Iterator;
    .end local v8    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v12    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v29    # "isDocomoAccount":Z
    :cond_21
    const/16 v35, 0x0

    goto :goto_5

    .line 591
    :catch_1
    move-exception v20

    .line 592
    .restart local v20    # "e":Ljava/lang/Exception;
    sget-object v41, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 622
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v35    # "syncable":Z
    :cond_22
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v39

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v39

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 624
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 625
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 627
    const-string/jumbo v39, "Loaded accounts"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 629
    const/4 v11, -0x1

    .line 630
    .local v11, "accountTypesSize":I
    monitor-enter p0

    .line 631
    :try_start_3
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v11

    .line 633
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 634
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountsWithRCS:Ljava/util/List;

    .line 635
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 636
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    .line 637
    move-object/from16 v0, v39

    invoke-static {v0, v14, v10}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 641
    invoke-virtual/range {v37 .. v37}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 643
    .local v24, "endTimeWall":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    .line 645
    .local v22, "endTime":J
    sget-object v39, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loaded meta-data for "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " account types, "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v41

    .line 645
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 646
    const-string/jumbo v41, " accounts in "

    .line 645
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 646
    sub-long v42, v24, v32

    .line 645
    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 646
    const-string/jumbo v41, "ms(wall) "

    .line 645
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 647
    sub-long v42, v22, v30

    .line 645
    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 647
    const-string/jumbo v41, "ms(cpu)"

    .line 645
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v39, v0

    if-eqz v39, :cond_23

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 651
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 653
    :cond_23
    const-string/jumbo v39, "ContactsPerf"

    const/16 v40, 0x3

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v39

    if-eqz v39, :cond_24

    .line 654
    const-string/jumbo v39, "ContactsPerf"

    const-string/jumbo v40, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_24
    return-void

    .line 630
    .end local v22    # "endTime":J
    .end local v24    # "endTimeWall":J
    :catchall_0
    move-exception v39

    monitor-exit p0

    throw v39
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 401
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    return-void
.end method
