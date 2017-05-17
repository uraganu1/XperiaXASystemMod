.class public Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;
.super Landroid/app/DialogFragment;
.source "ContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryFullDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2068
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;->TAG:Ljava/lang/String;

    .line 2066
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2066
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;
    .locals 1

    .prologue
    .line 2071
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;-><init>()V

    .line 2072
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2077
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2078
    const v3, 0x7f0901fa

    .line 2077
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2079
    const v3, 0x7f090206

    .line 2077
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2080
    const v3, 0x7f090200

    const/4 v4, 0x0

    .line 2077
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2081
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2082
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method
