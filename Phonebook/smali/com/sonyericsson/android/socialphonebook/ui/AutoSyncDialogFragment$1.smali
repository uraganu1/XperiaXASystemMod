.class Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;
.super Ljava/lang/Object;
.source "AutoSyncDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mTurnOnAutoSync:Z

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;Z)V

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;->onAutoSyncClosed()V

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->dismiss()V

    .line 35
    return-void
.end method
