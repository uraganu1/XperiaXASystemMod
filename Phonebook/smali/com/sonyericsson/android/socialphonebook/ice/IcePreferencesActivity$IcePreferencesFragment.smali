.class public Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "IcePreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IcePreferencesFragment"
.end annotation


# static fields
.field private static final PREF_CALL_FROM_LOCKSCREEN:Ljava/lang/String; = "pref_call_from_lockscreen"

.field private static final PREF_SHOW_IN_LOCKSCREEN:Ljava/lang/String; = "pref_show_in_lockscreen"


# instance fields
.field private mCanCallFromLockScreen:Landroid/preference/CheckBoxPreference;

.field private mShowInLockScreen:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getShowInLockscreenValue()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SystemSecurePrefsUtil;->getShowIceInLockscreen(Landroid/content/Context;)I

    move-result v0

    .line 126
    .local v0, "currentValue":I
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    return v2

    .line 131
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;-><init>()V

    return-object v0
.end method

.method private pushOneTimeCanCallContactsEnabledEvent(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const v0, 0x7f0901e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->pushOneTimeEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private pushOneTimeEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    const v2, 0x7f0901cf

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p2

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    return-void
.end method

.method private pushOneTimeShowContactsEnabledEvent(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const v0, 0x7f0901e0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->pushOneTimeEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "pref_call_from_lockscreen"

    .line 78
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->mCanCallFromLockScreen:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->mCanCallFromLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceCanCallFromLockscreen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "pref_show_in_lockscreen"

    .line 86
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->mShowInLockScreen:Landroid/preference/CheckBoxPreference;

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->mShowInLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getShowInLockscreenValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 70
    return-void

    .line 83
    :cond_0
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 92
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string/jumbo v2, "pref_call_from_lockscreen"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->mCanCallFromLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 109
    .local v0, "canCallFromLockScreen":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setIceCanCallFromLockscreen(Landroid/content/Context;Z)V

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->pushOneTimeCanCallContactsEnabledEvent(Landroid/content/Context;)V

    .line 106
    .end local v0    # "canCallFromLockScreen":Z
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string/jumbo v2, "pref_show_in_lockscreen"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->mShowInLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const/4 v1, 0x1

    .line 117
    .local v1, "newValue":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/util/SystemSecurePrefsUtil;->setShowIceInLockscreen(Landroid/content/Context;I)V

    .line 118
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity$IcePreferencesFragment;->pushOneTimeShowContactsEnabledEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 116
    .end local v1    # "newValue":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "newValue":I
    goto :goto_1
.end method
