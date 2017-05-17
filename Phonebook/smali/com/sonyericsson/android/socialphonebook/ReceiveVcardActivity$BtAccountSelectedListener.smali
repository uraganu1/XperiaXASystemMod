.class public Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;
.super Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
.source "ReceiveVcardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BtAccountSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->finish()V

    .line 77
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->mSelectedFileUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity$BtAccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/ReceiveVcardActivity;->importOneVCardFromBT(Landroid/net/Uri;Landroid/accounts/Account;)V

    .line 72
    return-void
.end method
