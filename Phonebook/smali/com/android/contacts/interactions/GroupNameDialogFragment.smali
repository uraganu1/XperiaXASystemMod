.class public abstract Lcom/android/contacts/interactions/GroupNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupNameDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTitleResourceId()I
.end method

.method protected abstract initializeGroupLabelEditText(Landroid/widget/EditText;)V
.end method

.method protected abstract onCompleted(Ljava/lang/String;)V
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 53
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04008e

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 54
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e017b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 55
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->initializeGroupLabelEditText(Landroid/widget/EditText;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getTitleResourceId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 61
    new-instance v5, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/widget/EditText;)V

    .line 60
    const v6, 0x104000a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 72
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 78
    new-instance v5, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 93
    const/4 v6, 0x5

    .line 92
    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 94
    return-object v1
.end method

.method updateOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 98
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 99
    .local v0, "okButton":Landroid/widget/Button;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
