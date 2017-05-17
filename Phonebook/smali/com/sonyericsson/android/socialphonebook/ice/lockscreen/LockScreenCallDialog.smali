.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;
.super Landroid/app/DialogFragment;
.source "LockScreenCallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;,
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;
    }
.end annotation


# static fields
.field private static final CONTACT_NAME_KEY:Ljava/lang/String; = "contactName"

.field private static final PHONE_NUMBERS_KEY:Ljava/lang/String; = "phoneNumbers"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;

.field private mContactName:Ljava/lang/String;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;

.field private mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mPhoneNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;
    .locals 3
    .param p0, "contactName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;)",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;-><init>()V

    .line 59
    .local v1, "lockScreenCallDialog":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "phoneNumbers"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    const-string/jumbo v2, "contactName"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 72
    .local v0, "targetFragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Please set target fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;

    if-eqz v1, :cond_1

    .line 77
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;

    .end local v0    # "targetFragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "phoneNumbers"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "contactName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mContactName:Ljava/lang/String;

    .line 68
    return-void

    .line 79
    .restart local v0    # "targetFragment":Landroid/app/Fragment;
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    const-string/jumbo v3, "LockScreenCallDialog.Listener"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "builderSingle":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
