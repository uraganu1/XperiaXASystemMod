.class Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 97
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;

    move-result-object v1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;->onSelectAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
