.class Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaActiveStateObserver;
.super Landroid/database/ContentObserver;
.source "AppConsumingDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaActiveStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    .line 179
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStaminaActiveState(Landroid/content/Context;)I

    move-result v0

    .line 185
    .local v0, "state":I
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->-get0(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Landroid/widget/Button;

    move-result-object v2

    .line 186
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 185
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    return-void
.end method
