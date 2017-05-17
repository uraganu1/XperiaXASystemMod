.class Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;
.super Landroid/widget/ArrayAdapter;
.source "InsertGalContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;->doInBackground(Landroid/app/Activity;[Lcom/android/contacts/common/model/Contact;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

.field final synthetic val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;

.field final synthetic val$target:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p5, "val$target"    # Landroid/app/Activity;
    .param p6, "val$dialogInflater"    # Landroid/view/LayoutInflater;
    .param p7, "val$accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 187
    .local p4, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask;

    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$target:Landroid/app/Activity;

    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 188
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x1020014

    const/4 v8, 0x0

    .line 191
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 195
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$target:Landroid/app/Activity;

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400d4

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 198
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 200
    .local v4, "text_phone":Landroid/widget/TextView;
    const v5, 0x7f0900c4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 214
    .end local v4    # "text_phone":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400d5

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 204
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 207
    .local v2, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    .line 206
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 209
    .local v3, "text2":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 211
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/InsertGalContactActivity$AddContactTask$1;->val$target:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
