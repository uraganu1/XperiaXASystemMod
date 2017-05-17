.class public Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
.super Ljava/lang/Object;
.source "ChooseAccountUtils.java"


# static fields
.field private static final EMPTY_ACCOUNTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ANYTHING_SAVED:Ljava/lang/String; = "ChooseAccountUtils_anything_saved"

.field private static final KEY_DEFAULT_ACCOUNT:Ljava/lang/String; = "ChooseAccountUtils_default_account"

.field private static final KEY_KNOWN_ACCOUNTS:Ljava/lang/String; = "ChooseAccountUtils_known_accounts"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private mKnownLocalAccountsTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->EMPTY_ACCOUNTS:Ljava/util/List;

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;-><init>(Landroid/content/Context;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->createKnownLocalAccountsTypesList()V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 71
    return-void
.end method

.method private createKnownLocalAccountsTypesList()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccountAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    .line 92
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->sInstance:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWritableAccounts()Ljava/util/List;
    .locals 2
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
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isSimContactsAccount(Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 356
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_1
    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isWritableAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 333
    .local v0, "isWritableAccount":Z
    return v0
.end method

.method private removeAccountType(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "accountTypeToRemove"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "removeFrom":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "currentAccount$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 315
    .local v0, "currentAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v2, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    .end local v0    # "currentAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return-void
.end method

.method private resetPreferenceValues()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ChooseAccountUtils_known_accounts"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ChooseAccountUtils_default_account"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method

.method private setPredefinedAccountAsDefault()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 393
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 394
    const v4, 0x7f090029

    .line 393
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "predefinedAccountType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    return v5

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 400
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v3, v1

    if-nez v3, :cond_1

    .line 401
    return v5

    .line 403
    :cond_1
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    aget-object v3, v1, v5

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 404
    const/4 v4, 0x0

    .line 403
    invoke-direct {v0, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 406
    const/4 v3, 0x1

    return v3
.end method

.method private wasDefaultAccountSet()Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ChooseAccountUtils_anything_saved"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method cleanupForTest()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ChooseAccountUtils_default_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ChooseAccountUtils_known_accounts"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "ChooseAccountUtils_anything_saved"

    .line 96
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    return-void
.end method

.method public getDefaultAccount()Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "ChooseAccountUtils_default_account"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "saved":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    return-object v5

    .line 179
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error with retrieving default account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->resetPreferenceValues()V

    .line 185
    return-object v5
.end method

.method public getLocalWritableAccountTypeStrings()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 274
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 275
    .local v2, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypes(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "installedAccount$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 276
    .local v0, "installedAccount":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local v0    # "installedAccount":Lcom/android/contacts/common/model/account/AccountType;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getLocalWritableAccounts(Z)Ljava/util/ArrayList;
    .locals 6
    .param p1, "showSimAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, "localAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 294
    .local v3, "writableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 297
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isSimContactsAccount(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v3    # "writableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "writableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    goto :goto_0

    .line 304
    .restart local v1    # "account$iterator":Ljava/util/Iterator;
    :cond_3
    return-object v2
.end method

.method public getRemoteAccountTypeStrings(Z)[Ljava/lang/String;
    .locals 5
    .param p1, "writableOnly"    # Z

    .prologue
    .line 258
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v2, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypes(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "installedAccount$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 260
    .local v0, "installedAccount":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "installedAccount":Lcom/android/contacts/common/model/account/AccountType;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getRemoteAccountsToBackup()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v0, "writableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->removeLocalAccounts(Ljava/util/List;)V

    .line 327
    return-object v0
.end method

.method public getSavedAccounts()Ljava/util/List;
    .locals 5
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
    .line 209
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "ChooseAccountUtils_known_accounts"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "saved":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->EMPTY_ACCOUNTS:Ljava/util/List;

    return-object v2

    .line 214
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringifyList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error with retrieving saved accounts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->resetPreferenceValues()V

    .line 220
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->EMPTY_ACCOUNTS:Ljava/util/List;

    return-object v2
.end method

.method public isDeviceLocalContactsAccount(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLocalAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isValidAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isSimContactsAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->isSimNewContactPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getWritableAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeDefaultAccountForTest()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ChooseAccountUtils_default_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    return-void
.end method

.method public removeLocalAccounts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "removeFrom":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mKnownLocalAccountsTypes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "typeStr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, "typeStr":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->removeAccountType(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "defaultAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "ChooseAccountUtils_anything_saved"

    const/4 v3, 0x1

    .line 143
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 151
    const-string/jumbo v1, "ChooseAccountUtils_known_accounts"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string/jumbo v1, "ChooseAccountUtils_default_account"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void

    .line 154
    :cond_1
    const-string/jumbo v1, "ChooseAccountUtils_known_accounts"

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getWritableAccounts()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->stringifyList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string/jumbo v1, "ChooseAccountUtils_default_account"

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public shouldShowAccountChangedNotification()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 235
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->wasDefaultAccountSet()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->setPredefinedAccountAsDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getSavedAccounts()Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, "savedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getWritableAccounts()Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "currentWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 243
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 244
    return v6

    .line 236
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v2    # "currentWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v4    # "savedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_2
    return v6

    .line 248
    .restart local v1    # "account$iterator":Ljava/util/Iterator;
    .restart local v2    # "currentWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v4    # "savedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getDefaultAccount()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    .line 249
    .local v3, "defaultAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isValidAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 250
    return v6

    .line 254
    :cond_4
    const/4 v5, 0x0

    return v5
.end method

.method public shouldShowChooseLocalAccountDialog(Z)Z
    .locals 2
    .param p1, "showSimAccount"    # Z

    .prologue
    const/4 v0, 0x1

    .line 371
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getLocalWritableAccounts(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowSelectBackupAccountDialog()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getRemoteAccountsToBackup()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldShowSyncDialog(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 338
    .local v0, "masterOff":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isWritableAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isLocalAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 337
    .end local v0    # "masterOff":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "masterOff":Z
    goto :goto_0

    .line 338
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
