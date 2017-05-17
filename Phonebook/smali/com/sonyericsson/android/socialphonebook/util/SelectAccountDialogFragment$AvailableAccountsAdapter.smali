.class Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableAccountsAdapter"
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
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
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
    .line 110
    .local p3, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    .line 112
    const v0, 0x7f0400a6

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 114
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "layout_inflater"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 121
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    .line 122
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 121
    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    .line 124
    .local v3, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-nez p2, :cond_0

    .line 125
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400a6

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    :cond_0
    const v6, 0x7f0e013d

    .line 128
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 131
    .local v1, "accountIconView":Landroid/widget/ImageView;
    const v6, 0x7f0e013f

    .line 130
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "accountNameView":Landroid/widget/TextView;
    const v6, 0x7f0e013e

    .line 132
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 135
    .local v4, "accountTypeView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    const v6, 0x7f090278

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 137
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v6

    .line 140
    sget-object v7, Lcom/android/contacts/photomanager/ContactPhotoManager;->ACCOUNT_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 138
    invoke-virtual {v6, v7}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 141
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p2

    .line 143
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v6

    .line 147
    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
