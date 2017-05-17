.class final Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;
.super Landroid/widget/ArrayAdapter;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;
    .param p2, "$anonymous1"    # I
    .param p4, "val$dialogInflater"    # Landroid/view/LayoutInflater;
    .param p5, "val$accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 92
    .local p3, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 97
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    .local v2, "context":Landroid/content/Context;
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d4

    .line 103
    const/4 v9, 0x0

    .line 102
    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    const v7, 0x1020014

    .line 104
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 106
    .local v6, "text_phone":Landroid/widget/TextView;
    const v7, 0x7f0900c4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .end local v6    # "text_phone":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 107
    :cond_0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d4

    .line 109
    const/4 v9, 0x0

    .line 108
    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    const v7, 0x1020014

    .line 110
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, "simTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 114
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-object p2

    .line 117
    .end local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v3    # "simTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d5

    .line 118
    const/4 v9, 0x0

    .line 117
    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    const v7, 0x1020014

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 120
    .local v4, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 122
    .local v5, "text2":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 123
    .restart local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
