.class public Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;
.super Ljava/lang/Object;
.source "DocomoAccountUtils.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "docomo"

.field private static final PROFILE_ACCOUNT_DATA_SET:Ljava/lang/String; = "myprofile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocomoAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "com.android.nttdocomo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public static getDocomoContactsAccountWithDataSet(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v1, "docomo"

    const-string/jumbo v2, "com.android.nttdocomo"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDocomoProfileAccountWithDataSet(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v1, "docomo"

    .line 56
    const-string/jumbo v2, "com.android.nttdocomo"

    const-string/jumbo v3, "myprofile"

    .line 55
    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isDocomoCustomization(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "brand":Ljava/lang/String;
    const-string/jumbo v1, "docomo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isDocomoProfileAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Z
    .locals 2
    .param p0, "typeWithDataSet"    # Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->isDocomoAccountType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    const-string/jumbo v1, "myprofile"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
