.class public final Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;
.super Landroid/app/DialogFragment;
.source "NonPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonPhoneDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getArgumentPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "phone_number"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;-><init>()V

    .line 107
    .local v1, "fragment":Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "phone"

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getArgumentPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->dismiss()V

    .line 125
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getArgumentPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 140
    :cond_0
    return-void
.end method
