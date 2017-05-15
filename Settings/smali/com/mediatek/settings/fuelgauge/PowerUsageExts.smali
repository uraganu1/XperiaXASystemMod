.class public Lcom/mediatek/settings/fuelgauge/PowerUsageExts;
.super Ljava/lang/Object;
.source "PowerUsageExts.java"


# instance fields
.field private mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mPerformancePower:Landroid/preference/ListPreference;

.field private mPowerUsageScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appListGroup"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPowerUsageScreen:Landroid/preference/PreferenceScreen;

    .line 33
    return-void
.end method

.method private setPerformaceAndPowerType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string/jumbo v1, "PowerUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPerformaceAndPowerType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, "pm":Landroid/os/PowerManager;
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    const v3, 0x7f0a0053

    .line 124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 127
    const-string/jumbo v1, "persist.sys.power.mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 113
    :pswitch_0
    const/16 v1, 0x102

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->powerHint(II)V

    goto :goto_0

    .line 116
    :pswitch_1
    const/16 v1, 0x103

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->powerHint(II)V

    goto :goto_0

    .line 119
    :pswitch_2
    const/16 v1, 0x101

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->powerHint(II)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public initPowerUsageExtItems()V
    .locals 7

    .prologue
    const v6, 0x7f0a0053

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_SUPPORT:Z

    if-eqz v3, :cond_0

    .line 42
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_UI_SUPPORT:Z

    .line 41
    if-eqz v3, :cond_0

    .line 43
    new-instance v3, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    .line 44
    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "background_power_saving"

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b0141

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 46
    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    const/16 v4, -0x63

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 47
    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 48
    const-string/jumbo v5, "background_power_saving_enable"

    .line 47
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPowerUsageScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    :cond_0
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_POWER_PERFORMANCE_STRATEGY_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    .line 54
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    const-string/jumbo v2, "performance_and_power"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 56
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 57
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 58
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 60
    const-string/jumbo v1, "persist.sys.power.mode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    .local v0, "performanceAndPowertype":I
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 64
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPowerUsageScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPerformancePower:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 39
    .end local v0    # "performanceAndPowertype":I
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 47
    goto :goto_0
.end method

.method public onPowerUsageExtItemsClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 72
    const-string/jumbo v2, "background_power_saving"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    instance-of v2, p2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 74
    check-cast v1, Landroid/preference/SwitchPreference;

    .line 75
    .local v1, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 76
    .local v0, "bgState":I
    :goto_0
    const-string/jumbo v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "background power saving state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 78
    const-string/jumbo v3, "background_power_saving_enable"

    .line 77
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    .end local v0    # "bgState":I
    .end local v1    # "pref":Landroid/preference/SwitchPreference;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 75
    .restart local v1    # "pref":Landroid/preference/SwitchPreference;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bgState":I
    goto :goto_0

    .line 86
    .end local v0    # "bgState":I
    .end local v1    # "pref":Landroid/preference/SwitchPreference;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 100
    const-string/jumbo v0, "performance_and_power"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "PowerUsageSummary"

    const-string/jumbo v1, "onPreferenceChange KEY_PERFORMANCE_AND_POWER "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->setPerformaceAndPowerType(I)V

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
