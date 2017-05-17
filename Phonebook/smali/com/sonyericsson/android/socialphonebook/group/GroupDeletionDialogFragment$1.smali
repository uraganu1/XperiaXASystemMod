.class Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupDeletionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->deleteGroup()V

    .line 65
    return-void
.end method
