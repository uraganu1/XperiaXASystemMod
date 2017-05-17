.class public Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;
.super Landroid/app/DialogFragment;
.source "AnsweringMachineSettingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;
    }
.end annotation


# static fields
.field private static final ITEM_SIM1_INDEX:I = 0x0

.field private static final ITEM_SIM2_INDEX:I = 0x1

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->setItemUnselectable(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 48
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Landroid/app/DialogFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 43
    :cond_1
    return-void
.end method

.method private setItemUnselectable(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;-><init>()V

    .line 40
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, "selectDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "r":Landroid/content/res/Resources;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 58
    const v4, 0x7f09004f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f090050

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 60
    .local v3, "selectionMenu":[Ljava/lang/String;
    const v4, 0x7f090314

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 62
    const v6, 0x7f0400d4

    .line 61
    invoke-direct {v4, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 62
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;)V

    .line 61
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 83
    return-object v0
.end method
