.class public Lcom/android/settings/accounts/AccountVisibilityFilter;
.super Ljava/lang/Object;
.source "AccountVisibilityFilter.java"


# instance fields
.field private mHiddenAccounts:[Ljava/lang/String;

.field private mWhiteListAccounts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method private isAccountInInvisibleList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 82
    .local v0, "hiddenAccount":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    const/4 v1, 0x1

    return v1

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "hiddenAccount":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private isAccountInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-object v3, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 70
    .local v0, "whiteAccount":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "whiteAccount":Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method public isAccountVisibleInAddingList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAccountVisibleInManagerList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 60
    :cond_1
    return v0

    .line 63
    :cond_2
    return v1
.end method
