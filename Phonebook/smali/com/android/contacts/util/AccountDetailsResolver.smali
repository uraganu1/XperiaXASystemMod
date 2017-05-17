.class public Lcom/android/contacts/util/AccountDetailsResolver;
.super Ljava/lang/Object;
.source "AccountDetailsResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountNameDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const v0, 0x7f0902f3

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->isSonyAccountType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const v0, 0x7f0902f2

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVerizonAccountType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVerizonCloudAccountType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    return-object p1

    .line 45
    :cond_3
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->getVerizonAccountDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountTypeDisplayText(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 58
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccountType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f09016b

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountTypeDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    .line 78
    .local v0, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 80
    .local v1, "resultAccountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {p0, v1}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountTypeDisplayText(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
