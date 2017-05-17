.class Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectLocalAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 48
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->dismiss()V

    .line 49
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;->onAccountSelectedForLocal(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 46
    return-void
.end method
