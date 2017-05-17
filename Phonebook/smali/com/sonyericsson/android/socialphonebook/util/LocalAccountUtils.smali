.class public Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;
.super Ljava/lang/Object;
.source "LocalAccountUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultLocalAccount(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    const/4 v3, 0x0

    .line 112
    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;->isDocomoCustomization(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;->getDocomoContactsAccountWithDataSet(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getDefaultLocalAccount(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAccountForProfile(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;->isDocomoCustomization(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DocomoAccountUtils;->getDocomoProfileAccountWithDataSet(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getDefaultLocalAccount(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalAccountAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLocalAccountType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
