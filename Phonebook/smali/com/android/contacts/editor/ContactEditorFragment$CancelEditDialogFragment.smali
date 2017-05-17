.class public Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelEditDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1794
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 3
    .param p0, "fragment"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 1797
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;-><init>()V

    .line 1798
    .local v0, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1799
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1800
    const-string/jumbo v2, "cancelEditor"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1796
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1806
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1807
    const v2, 0x1010355

    .line 1806
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1808
    const v2, 0x7f090162

    .line 1806
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1810
    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V

    .line 1809
    const v3, 0x104000a

    .line 1806
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1817
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 1806
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1819
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
