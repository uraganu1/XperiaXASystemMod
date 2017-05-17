.class Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectBackupAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
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
    .line 172
    .local p2, "accountsToDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const v0, 0x7f0400d5

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    .line 175
    const-string/jumbo v1, "layout_inflater"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 171
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    if-eqz p2, :cond_0

    move-object v6, p2

    .line 183
    .local v6, "resultView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 185
    .local v0, "account":Landroid/accounts/Account;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 186
    .local v2, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v4

    .line 188
    .local v4, "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    const v9, 0x1020006

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 189
    .local v5, "icon":Landroid/widget/ImageView;
    const v9, 0x1020014

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 190
    .local v7, "rowTextView1":Landroid/widget/TextView;
    const v9, 0x1020015

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 192
    .local v8, "rowTextView2":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isDeviceLocalContactsAccount(Landroid/accounts/Account;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    iget-object v9, v2, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->isSonyAccountType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 198
    const v9, 0x7f0902ef

    .line 197
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 200
    const v9, 0x7f0902f0

    .line 199
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 226
    :goto_2
    return-object v6

    .line 182
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v4    # "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    .end local v5    # "icon":Landroid/widget/ImageView;
    .end local v6    # "resultView":Landroid/view/View;
    .end local v7    # "rowTextView1":Landroid/widget/TextView;
    .end local v8    # "rowTextView2":Landroid/widget/TextView;
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040002

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "resultView":Landroid/view/View;
    goto :goto_0

    .line 203
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v2    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v4    # "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    .restart local v5    # "icon":Landroid/widget/ImageView;
    .restart local v7    # "rowTextView1":Landroid/widget/TextView;
    .restart local v8    # "rowTextView2":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 202
    invoke-static {v9, v2}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountTypeDisplayText(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "accountTypeLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 204
    invoke-static {v9, v10, v11}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountNameDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "accountNameLabel":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    .end local v1    # "accountNameLabel":Ljava/lang/String;
    .end local v3    # "accountTypeLabel":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isSimContactsAccount(Landroid/accounts/Account;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 211
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    const v9, 0x7f0902ef

    .line 212
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 215
    const v9, 0x7f0902f1

    .line 214
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 216
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    .line 218
    :cond_3
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2
.end method
