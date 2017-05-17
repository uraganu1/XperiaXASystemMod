.class Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap8(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 1812
    return-void
.end method
