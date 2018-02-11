.class public Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;
.super Landroid/app/DialogFragment;
.source "ManagePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmIgnoreFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;
    }
.end annotation


# static fields
.field private static ARG_UID_LIST:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->ARG_UID_LIST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)Lcom/android/settings/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "uidList"

    sput-object v0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->ARG_UID_LIST:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    invoke-direct {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;-><init>()V

    .line 267
    .local v1, "fragment":Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->ARG_UID_LIST:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 269
    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->setArguments(Landroid/os/Bundle;)V

    .line 270
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 293
    check-cast p1, Lcom/android/settings/SettingsActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 291
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0c1e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 278
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 279
    const v1, 0x7f0b0c20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)V

    .line 280
    const v2, 0x7f0b0c21

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
