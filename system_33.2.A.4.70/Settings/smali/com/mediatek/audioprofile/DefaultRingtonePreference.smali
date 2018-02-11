.class public Lcom/mediatek/audioprofile/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mKey:Ljava/lang/String;

.field private mNoNeedSIMSelector:Z

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSimId:J

.field private mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    .line 115
    const-string/jumbo v0, "audioprofile"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 116
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getAudioProfilePlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 112
    return-void
.end method


# virtual methods
.method public isNoNeedSIMSelector()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    return v0
.end method

.method protected onClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 202
    const-string/jumbo v4, "phone"

    .line 201
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 204
    .local v0, "mTeleManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 205
    .local v1, "simNum":I
    const-string/jumbo v3, "@M_Settings/Rt_Pref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick  : isNoNeedSIMSelector = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->isNoNeedSIMSelector()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    const-string/jumbo v5, "simNum <= SINGLE_SIMCARD: simNum = "

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-eqz v3, :cond_0

    if-ne v1, v6, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 210
    .local v2, "subId":I
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 213
    .end local v2    # "subId":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->isNoNeedSIMSelector()Z

    move-result v3

    if-nez v3, :cond_1

    if-gt v1, v6, :cond_2

    .line 214
    :cond_1
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 198
    :cond_2
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 154
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 153
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    const-string/jumbo v1, "RING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 157
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IAudioProfileExt;->setRingtonePickerParams(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    .line 186
    .local v0, "type":I
    const-string/jumbo v2, "@M_Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    const-string/jumbo v4, "  mSimId= "

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 186
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "@M_Settings/Rt_Pref"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreRingtone: uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    if-nez v1, :cond_0

    const-string/jumbo v2, "null"

    .line 191
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v1

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 7
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 173
    const-string/jumbo v2, "DefaultRingtonePreference"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "SimIdValume"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 175
    iget-object v1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v3

    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 171
    return-void
.end method

.method public setNoNeedSIMSelector(Z)V
    .locals 0
    .param p1, "mNoNeedSIMSelector"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    .line 227
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSimId(J)V
    .locals 7
    .param p1, "simId"    # J

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    const-string/jumbo v3, "DefaultRingtonePreference"

    const/4 v4, 0x0

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "SimIdValume"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    iput-wide p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 100
    const-string/jumbo v2, "@M_Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSimId   simId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " this.mSimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamType"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    .line 136
    return-void
.end method

.method simSelectorOnClick()V
    .locals 2

    .prologue
    .line 219
    const-string/jumbo v0, "@M_Settings/Rt_Pref"

    const-string/jumbo v1, "onClick  : simSelectorOnClick  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 218
    return-void
.end method
