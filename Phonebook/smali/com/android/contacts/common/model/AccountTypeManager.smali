.class public abstract Lcom/android/contacts/common/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/contacts/common/model/AccountTypeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->TAG:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/contacts/common/model/AccountTypeManager;

    monitor-enter v1

    .line 118
    :try_start_0
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->sInstance:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_1

    .line 108
    const-class v1, Lcom/android/contacts/common/model/AccountTypeManager;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->sInstance:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->sInstance:Lcom/android/contacts/common/model/AccountTypeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 114
    :cond_1
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->sInstance:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 198
    .local v0, "accountsByType":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static declared-synchronized injectAccountTypeManager(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 2
    .param p0, "atm"    # Lcom/android/contacts/common/model/AccountTypeManager;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const-class v0, Lcom/android/contacts/common/model/AccountTypeManager;

    monitor-enter v0

    .line 129
    :try_start_0
    sput-object p0, Lcom/android/contacts/common/model/AccountTypeManager;->sInstance:Lcom/android/contacts/common/model/AccountTypeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 128
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAccountTypes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(ZLjava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getAccountsWithRCS()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupWritableAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 182
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getUsableInvitableAccountTypes()Ljava/util/Map;
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
.end method

.method public abstract getWithoutSimAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method
