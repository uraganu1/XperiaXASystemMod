.class public Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "BatterySaverModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    const-string/jumbo v3, "android.settings.extra.battery_saver_mode_enabled"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, "intentGa":Landroid/content/Intent;
    const-string/jumbo v3, "com.sonymobile.superstamina"

    const-string/jumbo v4, "com.sonymobile.superstamina.ga.GaObserverService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v3, "root"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 51
    .local v2, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v3, "android.settings.extra.battery_saver_mode_enabled"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    .line 53
    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaActiveState(Landroid/content/Context;I)V

    .line 55
    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    .line 64
    .end local v0    # "enabled":Z
    .end local v1    # "intentGa":Landroid/content/Intent;
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 58
    .restart local v0    # "enabled":Z
    .restart local v1    # "intentGa":Landroid/content/Intent;
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 57
    invoke-static {v3, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaActiveState(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    .end local v0    # "enabled":Z
    .end local v1    # "intentGa":Landroid/content/Intent;
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    const-string/jumbo v3, "BatterySaverModeVoiceActivity"

    const-string/jumbo v4, "Missing battery saver mode extra"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
