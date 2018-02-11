.class Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;
.super Landroid/content/BroadcastReceiver;
.source "AppUsageDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 246
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->-wrap0(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;Z)V

    .line 245
    return-void
.end method
