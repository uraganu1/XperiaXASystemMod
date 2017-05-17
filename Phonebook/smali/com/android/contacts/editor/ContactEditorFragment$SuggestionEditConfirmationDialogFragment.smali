.class public Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionEditConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2361
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2366
    const v1, 0x1010355

    .line 2365
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2367
    const v1, 0x7f090165

    .line 2365
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2369
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;)V

    .line 2368
    const v2, 0x1040013

    .line 2365
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2380
    const v1, 0x1040009

    const/4 v2, 0x0

    .line 2365
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
