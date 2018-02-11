.class Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;
.super Landroid/content/BroadcastReceiver;
.source "UltraStaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->-get0(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    .line 72
    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimateString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "durationTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->-get0(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v1    # "durationTime":Ljava/lang/String;
    :cond_0
    return-void
.end method
