.class public Lcom/sonyericsson/conversations/ui/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateNotificationEnabled(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "updateValue"    # Z

    .prologue
    .line 21
    const-string/jumbo v4, "pref_key_ringtone"

    .line 20
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 23
    .local v0, "notificationRingtone":Landroid/preference/Preference;
    const-string/jumbo v4, "pref_key_vibrate"

    .line 22
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 25
    .local v1, "notificationVibrate":Landroid/preference/Preference;
    const-string/jumbo v4, "semc_pref_key_notification_led_enabled"

    .line 24
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 27
    .local v2, "notificationled":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 30
    :cond_0
    if-eqz v2, :cond_1

    .line 33
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    const-string/jumbo v4, "pref_key_category_notification"

    .line 34
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 36
    .local v3, "pc":Landroid/preference/PreferenceCategory;
    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 43
    .end local v3    # "pc":Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 19
    :cond_2
    return-void

    .line 40
    :cond_3
    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
