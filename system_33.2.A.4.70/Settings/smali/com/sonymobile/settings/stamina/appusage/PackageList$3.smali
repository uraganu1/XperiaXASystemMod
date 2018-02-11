.class Lcom/sonymobile/settings/stamina/appusage/PackageList$3;
.super Ljava/lang/Object;
.source "PackageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/PackageList;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->-get0(Lcom/sonymobile/settings/stamina/appusage/PackageList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->-wrap1(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->-set0(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 117
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->-set1(Lcom/sonymobile/settings/stamina/appusage/PackageList;Z)Z

    .line 114
    return-void
.end method
