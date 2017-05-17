.class public Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
.super Landroid/app/DialogFragment;
.source "DeleteCallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;,
        Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;
    }
.end annotation


# static fields
.field private static final ARGS_CALL_LOG_INFO:Ljava/lang/String; = "CallLogInfo"

.field private static final ARGS_DELETE_MODE:Ljava/lang/String; = "ArgsDeleteMode"

.field private static final ARGS_DIALOG_MESSAGE:Ljava/lang/String; = "ArgsDialogMessage"

.field private static final ARGS_POSITIVE_BTN_MESSAGE:Ljava/lang/String; = "ArgsPositiveBtnMessage"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    .locals 4
    .param p0, "deleteMode"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "positiveBtnMessage"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ArgsDeleteMode"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "ArgsDialogMessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, "ArgsPositiveBtnMessage"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "CallLogInfo"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;-><init>()V

    .line 66
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 75
    .local v0, "targetFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;

    .line 71
    return-void

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 79
    const-string/jumbo v2, "Target fragment not implements OnCallLogDeleteListener."

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "ArgsDialogMessage"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v6, "ArgsPositiveBtnMessage"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "positive":Ljava/lang/String;
    const-string/jumbo v6, "ArgsDeleteMode"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "deleteMode":Ljava/lang/String;
    const-string/jumbo v6, "CallLogInfo"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    .line 91
    .local v3, "info":Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 92
    const/high16 v7, 0x1040000

    .line 91
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 94
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;

    invoke-direct {v7, p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V

    .line 91
    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 101
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
