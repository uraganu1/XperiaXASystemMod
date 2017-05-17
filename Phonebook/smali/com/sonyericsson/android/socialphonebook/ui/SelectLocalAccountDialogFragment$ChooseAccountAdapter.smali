.class Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectLocalAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChooseAccountAdapter"
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
.field private mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "accountsToDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const v0, 0x7f0400d5

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    .line 137
    const-string/jumbo v1, "layout_inflater"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 133
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 143
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 145
    .local v4, "resultView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 146
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 147
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v2

    .line 149
    .local v2, "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 150
    .local v3, "icon":Landroid/widget/ImageView;
    const v7, 0x1020014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 151
    .local v5, "rowTextView1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 153
    .local v6, "rowTextView2":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isDeviceLocalContactsAccount(Landroid/accounts/Account;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    const v7, 0x7f0902f2

    .line 157
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :goto_1
    return-object v4

    .line 144
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "resultView":Landroid/view/View;
    .end local v5    # "rowTextView1":Landroid/widget/TextView;
    .end local v6    # "rowTextView2":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "resultView":Landroid/view/View;
    goto :goto_0

    .line 159
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v2    # "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "rowTextView1":Landroid/widget/TextView;
    .restart local v6    # "rowTextView2":Landroid/widget/TextView;
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isSimContactsAccount(Landroid/accounts/Account;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    const v7, 0x7f0902f3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
