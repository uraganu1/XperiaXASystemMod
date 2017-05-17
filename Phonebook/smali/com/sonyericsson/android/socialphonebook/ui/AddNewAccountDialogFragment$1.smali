.class Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "AddNewAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

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
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "accountTypeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->dismiss()V

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;->onNewAccountChosen(Ljava/lang/String;)V

    .line 46
    return-void
.end method
