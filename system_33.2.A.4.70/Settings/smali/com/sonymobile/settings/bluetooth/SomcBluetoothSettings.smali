.class public Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;
.super Lcom/android/settings/bluetooth/BluetoothSettings;
.source "SomcBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$1;
    }
.end annotation


# static fields
.field private static latestPaired:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field private static supportMode:Z


# instance fields
.field private mAddHightlightedPreference:Z

.field private mBluetoothManagerCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHeaderShown:Z

.field private mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScanning:Z

.field private mShowHelp:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->startScanning()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mShowHelp:Z

    .line 39
    new-instance v0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$1;-><init>(Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mBluetoothManagerCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 51
    return-void
.end method

.method public static getAndSetSupportMode(Z)Z
    .locals 1
    .param p0, "newValue"    # Z

    .prologue
    .line 151
    sget-boolean v0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->supportMode:Z

    .line 152
    .local v0, "oldValue":Z
    sput-boolean p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->supportMode:Z

    .line 153
    return v0
.end method

.method private static setLatestPaired(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p0, "newValue"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 157
    sput-object p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->latestPaired:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 156
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    if-eqz p1, :cond_1

    .line 59
    const-string/jumbo v2, "SomcBluetoothSettings.recreation."

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 60
    sget-object v2, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->latestPaired:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mAddHightlightedPreference:Z

    .line 63
    :cond_0
    iput-boolean v3, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mShowHelp:Z

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mBluetoothManagerCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040021

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 71
    const v2, 0x7f040025

    .line 70
    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 72
    .local v1, "refreshButtonLayout":Landroid/widget/LinearLayout;
    const v2, 0x7f130041

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mRefreshButton:Landroid/widget/Button;

    .line 73
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mRefreshButton:Landroid/widget/Button;

    new-instance v3, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$2;-><init>(Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 144
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mAddHightlightedPreference:Z

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 143
    return-void
.end method

.method protected onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 138
    invoke-static {p1}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->setLatestPaired(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getAndSetSupportMode(Z)Z

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mShowHelp:Z

    .line 98
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onResume()V

    .line 96
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const-string/jumbo v0, "SomcBluetoothSettings.recreation."

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onScanningStateChanged(Z)V

    .line 131
    iput-boolean p1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mScanning:Z

    .line 132
    iget-object v1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mRefreshButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->resetBackground()V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->removeCallbacksFromHandlers()V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onStop()V

    .line 87
    return-void
.end method

.method protected updateContent(I)V
    .locals 6
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 104
    const/16 v2, 0xc

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mShowHelp:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHeaderShown:Z

    if-eqz v2, :cond_2

    .line 108
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mAddHightlightedPreference:Z

    if-eqz v2, :cond_3

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 112
    .local v1, "pref":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    sget-object v2, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->latestPaired:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    .line 114
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    iget-object v3, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    sget-object v3, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->latestPaired:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    sget-object v3, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->latestPaired:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHighlightedDevice:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 119
    iput-boolean v4, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHeaderShown:Z

    .line 120
    iput-boolean v4, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mShowHelp:Z

    .line 121
    invoke-static {v5}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->setLatestPaired(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 122
    iput-boolean v4, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mAddHightlightedPreference:Z

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    .end local v1    # "pref":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;->mHeaderShown:Z

    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method
