.class Lcom/android/settings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/WifiCallingSettings;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 90
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    if-nez v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 96
    .local v1, "isNonTtyOrTtyOnVolteEnabled":Z
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    .line 97
    .local v4, "switchBar":Lcom/android/settings/widget/SwitchBar;
    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    move v2, v1

    .line 100
    :goto_0
    if-nez p1, :cond_4

    .end local v1    # "isNonTtyOrTtyOnVolteEnabled":Z
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 103
    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "wifi_calling_mode"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 104
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    if-nez p1, :cond_1

    const/4 v5, 0x1

    .line 105
    :cond_1
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 87
    :cond_2
    return-void

    .line 97
    .end local v3    # "pref":Landroid/preference/Preference;
    .restart local v1    # "isNonTtyOrTtyOnVolteEnabled":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "isWfcEnabled":Z
    goto :goto_0

    .end local v2    # "isWfcEnabled":Z
    :cond_4
    move v1, v5

    .line 100
    goto :goto_1
.end method
