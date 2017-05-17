.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;
.super Landroid/app/DialogFragment;
.source "SpeedDialReplaceNumberDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;
    }
.end annotation


# static fields
.field private static final KEY_ITEM_NUMBER_ID:Ljava/lang/String; = "number_id"

.field private static final KEY_ITEM_POSITION:Ljava/lang/String; = "position"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IJ)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;
    .locals 3
    .param p0, "position"    # I
    .param p1, "phoneNumberId"    # J

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "position"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v2, "number_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;-><init>()V

    .line 56
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;->onReplaceCancel()V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Target fragment must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    const-class v3, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "position"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 75
    .local v5, "position":I
    const-string/jumbo v8, "number_id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 78
    .local v6, "phoneNumberId":J
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 79
    const v9, 0x7f0400d9

    const/4 v10, 0x0

    .line 78
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "dialogView":Landroid/view/View;
    const v8, 0x7f0e0216

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, "mMessage1":Landroid/widget/TextView;
    const v8, 0x7f09037a

    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v8, 0x7f0e0217

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    .local v4, "mMessage2":Landroid/widget/TextView;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 87
    const v9, 0x7f09037b

    .line 86
    invoke-virtual {p0, v9, v8}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f09037d

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v8, 0x7f09037c

    .line 96
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;

    invoke-direct {v9, p0, v5, v6, v7}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;IJ)V

    .line 95
    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$2;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;)V

    .line 105
    const v9, 0x7f090129

    invoke-virtual {v0, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
