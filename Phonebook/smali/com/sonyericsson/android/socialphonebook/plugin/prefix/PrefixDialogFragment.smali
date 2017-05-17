.class public Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrefixDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;
    }
.end annotation


# static fields
.field private static final DIALOG_CURRENT_PHONE_NUMBER:Ljava/lang/String; = "currentPhoneNumber"

.field private static final DIALOG_PREFIX_NAMES:Ljava/lang/String; = "prefixNames"

.field private static final DIALOG_PREFIX_NUMBERS:Ljava/lang/String; = "prefixNumbers"

.field private static final DIALOG_PREFIX_TYPE:Ljava/lang/String; = "prefixType"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;)Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;
    .locals 3
    .param p0, "prefixType"    # I
    .param p1, "prefixNames"    # [Ljava/lang/String;
    .param p2, "prefixNumbers"    # [Ljava/lang/String;
    .param p3, "currentPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;-><init>()V

    .line 58
    .local v1, "prefixDialog":Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "prefixType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v2, "prefixNames"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "prefixNumbers"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, "currentPhoneNumber"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 46
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    .line 42
    return-void

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parent fragment not implements "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    const-class v3, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v7, "prefixType"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 72
    .local v6, "type":I
    const-string/jumbo v7, "prefixNames"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "names":[Ljava/lang/String;
    const-string/jumbo v7, "prefixNumbers"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "numbers":[Ljava/lang/String;
    const-string/jumbo v7, "currentPhoneNumber"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "currentPhoneNumber":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch v6, :pswitch_data_0

    .line 90
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Unknown dialog type supplied."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 81
    :pswitch_0
    const v5, 0x7f09027d

    .line 93
    .local v5, "titleId":I
    :goto_0
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;

    invoke-direct {v7, p0, v4, v2, v6}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 84
    .end local v5    # "titleId":I
    :pswitch_1
    const v5, 0x7f09027e

    .line 85
    .restart local v5    # "titleId":I
    goto :goto_0

    .line 87
    .end local v5    # "titleId":I
    :pswitch_2
    const v5, 0x7f09027f

    .line 88
    .restart local v5    # "titleId":I
    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
