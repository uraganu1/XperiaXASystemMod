.class Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectBackupAccountDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 58
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->dismiss()V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;->onAccountSelectedForBackup(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 54
    return-void
.end method
