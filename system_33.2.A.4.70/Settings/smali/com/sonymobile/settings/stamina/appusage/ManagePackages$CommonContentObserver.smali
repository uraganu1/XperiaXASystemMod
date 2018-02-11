.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;
.super Landroid/database/ContentObserver;
.source "ManagePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    .line 162
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 161
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 165
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get4(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-wrap1(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    .line 172
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-wrap0(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    .line 169
    return-void
.end method
