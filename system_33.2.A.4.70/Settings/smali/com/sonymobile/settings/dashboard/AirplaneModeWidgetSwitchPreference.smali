.class public Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "AirplaneModeWidgetSwitchPreference.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mActivity:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/android/settings/AirplaneModeEnabler;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "enabler"    # Lcom/android/settings/AirplaneModeEnabler;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 57
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 60
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 56
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public setSwitchWidget(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switchWidget"    # Landroid/widget/Switch;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 36
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference$1;-><init>(Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    return-void
.end method
