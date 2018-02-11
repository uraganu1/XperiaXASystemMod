.class Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;
.super Ljava/lang/Object;
.source "AirplaneModeWidgetSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->setSwitchWidget(Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;->this$0:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 44
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;->this$0:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    invoke-static {v0}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->-get0(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;)Landroid/app/Activity;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    .line 47
    const/4 v3, 0x0

    .line 46
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;->this$0:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;->this$0:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    invoke-static {v1}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->-get1(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->-wrap0(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;Ljava/lang/Object;)Z

    goto :goto_0
.end method
