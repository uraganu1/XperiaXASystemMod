.class Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;
.super Ljava/lang/Object;
.source "BackupHintDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->dismiss()V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;->onAddNewBackupClicked()V

    .line 39
    return-void
.end method
