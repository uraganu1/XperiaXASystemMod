.class Lcom/sonymobile/settings/phone/DataRoamingSettings$1;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 7
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const v6, 0x16204a98

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 100
    if-eqz p2, :cond_6

    .line 101
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 102
    const-string/jumbo v5, "device_policy"

    .line 101
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 105
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isDataRoamingDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 107
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v0

    .line 111
    .local v0, "disableChargePopups":Z
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 113
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get2(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 115
    .end local v0    # "disableChargePopups":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 116
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4, v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap8(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V

    .line 133
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    if-eqz p2, :cond_7

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 137
    return v3

    .line 113
    .restart local v0    # "disableChargePopups":Z
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const/4 v0, 0x1

    .local v0, "disableChargePopups":Z
    goto :goto_0

    .line 117
    .end local v0    # "disableChargePopups":Z
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap9(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    goto :goto_1

    .line 119
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 120
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4, v6}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap12(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_1

    .line 122
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4, v6}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap11(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_1

    .line 125
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap13(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    goto :goto_1

    .line 128
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap8(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V

    goto :goto_1

    :cond_7
    move v2, v3

    .line 133
    goto :goto_2
.end method
