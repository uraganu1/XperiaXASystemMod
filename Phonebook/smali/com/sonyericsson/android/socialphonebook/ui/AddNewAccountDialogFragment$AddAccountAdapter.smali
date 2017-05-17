.class Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AddNewAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddAccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x7f04005b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 142
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mContext:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mContext:Landroid/content/Context;

    .line 144
    const-string/jumbo v1, "layout_inflater"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 140
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 150
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 152
    .local v4, "resultView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "accountTypeStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mAccountTypesManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v6, v1, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 157
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 158
    .local v3, "icon":Landroid/widget/ImageView;
    const v6, 0x1020014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 160
    .local v5, "rowTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 163
    .local v2, "displayLabel":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 164
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_1
    return-object v4

    .line 151
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "accountTypeStr":Ljava/lang/String;
    .end local v2    # "displayLabel":Ljava/lang/CharSequence;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "resultView":Landroid/view/View;
    .end local v5    # "rowTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04005b

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "resultView":Landroid/view/View;
    goto :goto_0

    .line 166
    .restart local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v1    # "accountTypeStr":Ljava/lang/String;
    .restart local v2    # "displayLabel":Ljava/lang/CharSequence;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v5    # "rowTextView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1
.end method
