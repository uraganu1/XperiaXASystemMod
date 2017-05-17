.class public final Lcom/android/contacts/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    }
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p3, "currentAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 74
    invoke-direct {p0, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 75
    if-eqz p3, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method private getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 5
    .param p1, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_NO_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v2, :cond_0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 89
    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v4, :cond_1

    .line 88
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_1
    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 92
    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v4, :cond_3

    .line 91
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_3
    move v0, v1

    .line 92
    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 100
    .local v4, "resultView":Landroid/view/View;
    :goto_0
    const v7, 0x1020014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 101
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    .local v3, "icon":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 105
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 107
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountTypeDisplayText(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 111
    invoke-static {v7, v8, v9}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountNameDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v7

    .line 119
    sget-object v8, Lcom/android/contacts/photomanager/ContactPhotoManager;->ACCOUNT_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 117
    invoke-virtual {v7, v8}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v4

    .line 98
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "resultView":Landroid/view/View;
    .end local v5    # "text1":Landroid/widget/TextView;
    .end local v6    # "text2":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "resultView":Landroid/view/View;
    goto :goto_0

    .line 122
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .restart local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "text1":Landroid/widget/TextView;
    .restart local v6    # "text2":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
