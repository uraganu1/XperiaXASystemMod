.class Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    .prologue
    .line 2369
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2373
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment;

    .line 2375
    .local v1, "targetFragment":Lcom/android/contacts/editor/ContactEditorFragment;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "contactUri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2376
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doEditSuggestedContact(Landroid/net/Uri;)V

    .line 2371
    return-void
.end method
