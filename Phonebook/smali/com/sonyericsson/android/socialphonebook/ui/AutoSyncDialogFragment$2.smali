.class Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$2;
.super Ljava/lang/Object;
.source "AutoSyncDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    iput-boolean p2, v0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mTurnOnAutoSync:Z

    .line 71
    return-void
.end method
