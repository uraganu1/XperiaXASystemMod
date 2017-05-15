.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$1;
.super Ljava/lang/Object;
.source "ManagePackages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$1;->this$1:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 283
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$1;->this$1:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment$IgnoreAppsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    return-void
.end method
