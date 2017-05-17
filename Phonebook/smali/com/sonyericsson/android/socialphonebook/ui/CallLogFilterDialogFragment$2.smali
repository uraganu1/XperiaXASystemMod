.class Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFilterDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)V

    .line 133
    :cond_0
    return-void
.end method
