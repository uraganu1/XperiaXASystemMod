.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;
.super Landroid/app/DialogFragment;
.source "SpeedDialDuplicationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;
    }
.end annotation


# static fields
.field private static final KEY_ITEM_NEW_POSITION:Ljava/lang/String; = "new_position"

.field private static final KEY_ITEM_OLD_POSITION:Ljava/lang/String; = "old_position"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->TAG:Ljava/lang/String;

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

.method public static newInstance(II)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;
    .locals 3
    .param p0, "newPosition"    # I
    .param p1, "oldPosition"    # I

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "new_position"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v2, "old_position"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;-><init>()V

    .line 56
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;->onDuplicateCancel()V

    .line 117
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
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;
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
    const-class v3, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;

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
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "new_position"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 75
    .local v5, "newPosition":I
    const-string/jumbo v7, "old_position"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "oldPosition":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 79
    const v8, 0x7f0400d9

    const/4 v9, 0x0

    .line 78
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "dialogView":Landroid/view/View;
    const v7, 0x7f0e0216

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "mMessage1":Landroid/widget/TextView;
    new-array v7, v11, [Ljava/lang/Object;

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 83
    const v8, 0x7f090376

    .line 82
    invoke-virtual {p0, v8, v7}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v7, 0x7f0e0217

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 87
    .local v4, "mMessage2":Landroid/widget/TextView;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    .line 88
    const v8, 0x7f090377

    .line 87
    invoke-virtual {p0, v8, v7}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090379

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    new-array v7, v11, [Ljava/lang/Object;

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 98
    const v8, 0x7f090378

    .line 97
    invoke-virtual {p0, v8, v7}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 99
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;

    invoke-direct {v8, p0, v6, v5}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;II)V

    .line 96
    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$2;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$2;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;)V

    .line 106
    const v8, 0x7f090129

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
