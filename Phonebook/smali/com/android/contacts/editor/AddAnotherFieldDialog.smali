.class public Lcom/android/contacts/editor/AddAnotherFieldDialog;
.super Landroid/app/DialogFragment;
.source "AddAnotherFieldDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;
    }
.end annotation


# static fields
.field private static final ARGUMENT_RAW_CONTACT_ID:Ljava/lang/String; = "RawContactID"

.field private static final ARGUMENT_TITLES:Ljava/lang/String; = "Titles"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/AddAnotherFieldDialog;)Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog;->mListener:Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/contacts/editor/AddAnotherFieldDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/AddAnotherFieldDialog;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;J)Lcom/android/contacts/editor/AddAnotherFieldDialog;
    .locals 3
    .param p0, "titles"    # [Ljava/lang/String;
    .param p1, "rawContactId"    # J

    .prologue
    .line 58
    new-instance v1, Lcom/android/contacts/editor/AddAnotherFieldDialog;

    invoke-direct {v1}, Lcom/android/contacts/editor/AddAnotherFieldDialog;-><init>()V

    .line 59
    .local v1, "dialog":Lcom/android/contacts/editor/AddAnotherFieldDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "Titles"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "RawContactID"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 42
    .local v0, "targetFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;

    .end local v0    # "targetFragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/android/contacts/editor/AddAnotherFieldDialog;->mListener:Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;

    .line 39
    return-void

    .line 45
    .restart local v0    # "targetFragment":Landroid/app/Fragment;
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    invoke-virtual {v0}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    const-string/jumbo v3, " must implement AddAnotherFieldDialog.OnFieldSelectedListener"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "RawContactID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 69
    .local v2, "rawContactId":J
    invoke-virtual {p0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "Titles"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "titles":[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09007e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 72
    new-instance v4, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/contacts/editor/AddAnotherFieldDialog$1;-><init>(Lcom/android/contacts/editor/AddAnotherFieldDialog;J)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
