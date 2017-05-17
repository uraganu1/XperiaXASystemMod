.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "ContactsFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryGroupsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;",
        "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)V
    .locals 0
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method private coordinateAccounts(Landroid/content/Context;Lcom/android/contacts/common/model/AccountTypeManager;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;
    .param p3, "displayAccounts"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    .param p4, "hiddenAccounts"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .prologue
    .line 458
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "hiddenAccount$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 459
    .local v2, "hiddenAccount":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "displayAccount$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 460
    .local v0, "displayAccount":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v7, v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mAliasType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 461
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 462
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 463
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 464
    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getVisible()Z

    move-result v7

    .line 463
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->putVisible(Z)V

    .line 462
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "displayAccount":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .end local v1    # "displayAccount$iterator":Ljava/util/Iterator;
    .end local v2    # "hiddenAccount":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_2
    return-void
.end method

.method private getAliasAccount(Landroid/content/Context;Lcom/android/contacts/common/model/AccountTypeManager;Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountTypeManager"    # Lcom/android/contacts/common/model/AccountTypeManager;
    .param p3, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v6, 0x0

    .line 437
    iget-object v5, p3, Lcom/android/contacts/common/model/account/AccountType;->aliasNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 439
    iget-object v5, p3, Lcom/android/contacts/common/model/account/AccountType;->aliasNames:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "aliasName$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "aliasName":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 441
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 443
    .local v2, "act":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v2, p1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    iget-object v5, v2, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    return-object v5

    .line 450
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v2    # "act":Lcom/android/contacts/common/model/account/AccountType;
    .end local v3    # "aliasName":Ljava/lang/String;
    .end local v4    # "aliasName$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 395
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Void;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;[Ljava/lang/Void;)[Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;[Ljava/lang/Void;)[Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    .locals 12
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 397
    move-object v5, p1

    .line 398
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 399
    .local v8, "resolver":Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 402
    .local v4, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    invoke-direct {v6}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;-><init>()V

    .line 403
    .local v6, "displayAccounts":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;-><init>()V

    .line 404
    .local v7, "hiddenAccounts":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountsWithRCS()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 405
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v4, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    .line 406
    .local v3, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->isExtension()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 411
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 412
    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 411
    invoke-direct {v2, v8, v9, v10, v11}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .local v2, "accountDisplay":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    invoke-direct {p0, v5, v4, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;->getAliasAccount(Landroid/content/Context;Lcom/android/contacts/common/model/AccountTypeManager;Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mAliasType:Ljava/lang/String;

    .line 424
    iget-object v9, v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mAliasType:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 426
    invoke-virtual {v7, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "accountDisplay":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .end local v3    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;->coordinateAccounts(Landroid/content/Context;Lcom/android/contacts/common/model/AccountTypeManager;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)V

    .line 432
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    return-object v9
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;[Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)V
    .locals 4
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
    .param p2, "result"    # [Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .prologue
    .line 474
    move-object v1, p1

    .line 475
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)V

    .line 476
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->setListAdapter(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)V

    .line 472
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 472
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;[Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)V

    return-void
.end method
