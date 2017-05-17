.class public abstract Lcom/android/contacts/common/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# static fields
.field private static mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private static final mInitializationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v1, Lcom/android/contacts/common/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 104
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 107
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public contains(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "contactWritableOnly"    # Z

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account_2$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 186
    .local v0, "account_2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x1

    return v2

    .line 190
    .end local v0    # "account_2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return v3
.end method

.method public abstract getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
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
