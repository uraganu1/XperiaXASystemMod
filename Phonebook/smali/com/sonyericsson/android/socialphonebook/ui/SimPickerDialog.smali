.class public Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
.super Landroid/app/DialogFragment;
.source "SimPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;,
        Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;,
        Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;,
        Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;
    }
.end annotation


# static fields
.field private static final KEY_INPUT_CODE:Ljava/lang/String; = "inputCode"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInputCode:Ljava/lang/String;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

.field private mPaused:Z

.field private mSelectSimAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mInputCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mPaused:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 156
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    return-void
.end method

.method private initialise()V
    .locals 6

    .prologue
    .line 149
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mItems:Ljava/util/List;

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mItems:Ljava/util/List;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mContext:Landroid/content/Context;

    .line 150
    const v3, 0x7f020015

    const v4, 0x7f09004f

    .line 151
    const/4 v5, 0x0

    .line 150
    invoke-direct {v1, v3, v4, v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;-><init>(IILandroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mItems:Ljava/util/List;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mContext:Landroid/content/Context;

    .line 152
    const v3, 0x7f020016

    const v4, 0x7f090050

    .line 153
    const/4 v5, 0x1

    .line 152
    invoke-direct {v1, v3, v4, v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SimPickerListItem;-><init>(IILandroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
    .locals 3
    .param p0, "inputCode"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;-><init>()V

    .line 59
    .local v1, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "inputCode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v2, "inputCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mInputCode:Ljava/lang/String;

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 74
    .local v1, "fragment":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

    if-eqz v2, :cond_1

    .line 75
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

    .end local v1    # "fragment":Landroid/app/Fragment;
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->initialise()V

    .line 66
    return-void

    .line 77
    .restart local v1    # "fragment":Landroid/app/Fragment;
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    const-string/jumbo v4, " must implement "

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    const-class v4, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mSelectSimAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    const v1, 0x7f0903c4

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mSelectSimAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mPaused:Z

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->mPaused:Z

    .line 93
    return-void
.end method
