.class public Lcom/mediatek/settings/cdma/CdmaSimStatus;
.super Ljava/lang/Object;
.source "CdmaSimStatus.java"


# instance fields
.field private mActivity:Landroid/preference/PreferenceActivity;

.field private mDefaultText:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mActivity:Landroid/preference/PreferenceActivity;

    .line 45
    iput-object p2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 46
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 47
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    const v0, 0x7f0b015c

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mDefaultText:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private getMccMncProperty(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 217
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 220
    const-string/jumbo v2, "gsm.operator.numeric"

    .line 221
    const-string/jumbo v3, ""

    .line 219
    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v1
.end method

.method private getNetworkType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "networktype":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 161
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 160
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 162
    .local v0, "actualDataNetworkType":I
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 163
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 162
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 164
    .local v1, "actualVoiceNetworkType":I
    const-string/jumbo v3, "CdmaSimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "actualDataNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    const-string/jumbo v5, "actualVoiceNetworkType = "

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v0, :cond_1

    .line 167
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    .end local v2    # "networktype":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "CdmaSimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNetworkType() networktype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->renameNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    .restart local v2    # "networktype":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 169
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "networktype":Ljava/lang/String;
    goto :goto_0
.end method

.method private getServiceState()Landroid/telephony/ServiceState;
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 178
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    const-string/jumbo v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v0
.end method

.method private isRegisterUnderLteNetwork()Z
    .locals 5

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 184
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    const-string/jumbo v2, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRegisterUnderLteNetwork with serviceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "isLteNetwork":Z
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    const-string/jumbo v2, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLteNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v0
.end method

.method private removeCdmaItems()V
    .locals 1

    .prologue
    .line 196
    const-string/jumbo v0, "current_operators_mccmnc"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "current_sidnid"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "current_cellid"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 298
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    :cond_0
    return-void
.end method

.method static renameNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "netWorkTypeName"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string/jumbo v0, "CdmaSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameNetworkTypeNameForCTSpec, netWorkTypeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 274
    if-eqz v0, :cond_1

    .line 277
    :cond_0
    const-string/jumbo v0, "CDMA EVDO"

    return-object v0

    .line 278
    :cond_1
    const-string/jumbo v0, "CDMA - 1xRTT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const-string/jumbo v0, "CDMA 1x"

    return-object v0

    .line 280
    :cond_2
    const-string/jumbo v0, "GPRS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    const-string/jumbo v0, "EDGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 280
    if-eqz v0, :cond_4

    .line 282
    :cond_3
    const-string/jumbo v0, "GSM"

    return-object v0

    .line 283
    :cond_4
    const-string/jumbo v0, "HSDPA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 284
    const-string/jumbo v0, "HSUPA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 283
    if-nez v0, :cond_5

    .line 285
    const-string/jumbo v0, "HSPA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 283
    if-nez v0, :cond_5

    .line 286
    const-string/jumbo v0, "HSPA+"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 283
    if-nez v0, :cond_5

    .line 287
    const-string/jumbo v0, "UMTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 283
    if-eqz v0, :cond_6

    .line 288
    :cond_5
    const-string/jumbo v0, "WCDMA"

    return-object v0

    .line 289
    :cond_6
    const-string/jumbo v0, "CDMA - eHRPD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    const-string/jumbo v0, "eHRPD"

    return-object v0

    .line 292
    :cond_7
    return-object p0
.end method

.method private setCdmaSidNid()V
    .locals 6

    .prologue
    .line 227
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 228
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v1

    .line 229
    .local v1, "sid":I
    iget-object v3, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v0

    .line 230
    .local v0, "nid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "sidnid":Ljava/lang/String;
    const-string/jumbo v3, "CdmaSimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sidnid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string/jumbo v3, "current_sidnid"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v0    # "nid":I
    .end local v1    # "sid":I
    .end local v2    # "sidnid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCdmaSignalStrength(Landroid/telephony/SignalStrength;Landroid/preference/Preference;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, -0x1

    .line 140
    const-string/jumbo v2, "CdmaSimStatus"

    const-string/jumbo v3, "setCdmaSignalStrength() for 1x cdma network type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v2, "CDMA 1x"

    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 143
    .local v1, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    .line 145
    .local v0, "signalAsu":I
    if-ne v4, v1, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 149
    :cond_0
    if-ne v4, v0, :cond_1

    .line 150
    const/4 v0, 0x0

    .line 152
    :cond_1
    const-string/jumbo v2, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cdma 1x signalDbm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " signalAsu = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mActivity:Landroid/preference/PreferenceActivity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 153
    const v4, 0x7f0b0a38

    invoke-virtual {v2, v4, v3}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    .end local v0    # "signalAsu":I
    .end local v1    # "signalDbm":I
    :cond_2
    return-void
.end method

.method private setCellId()V
    .locals 5

    .prologue
    .line 237
    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 238
    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 239
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 240
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "cellLocation":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "cellId":Ljava/lang/String;
    const-string/jumbo v2, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cellId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string/jumbo v2, "current_cellid"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "cellId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setMccMnc()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "numeric":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v4}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->getMccMncProperty(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "numeric":Ljava/lang/String;
    const-string/jumbo v4, "CdmaSimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMccMnc, numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 206
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "mnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "mccmnc":Ljava/lang/String;
    const-string/jumbo v4, "CdmaSimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mccmnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string/jumbo v4, "current_operators_mccmnc"

    invoke-direct {p0, v4, v1}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object p2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mDefaultText:Ljava/lang/String;

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 254
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    return-void
.end method


# virtual methods
.method public setPhoneInfos(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "phoneType":I
    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setServiceState(Landroid/telephony/ServiceState;)V

    .line 55
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 59
    :goto_0
    const-string/jumbo v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPhoneInfos phoneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    return-void

    .line 57
    :cond_0
    const-string/jumbo v1, "CdmaSimStatus"

    const-string/jumbo v2, "No phone available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setServiceState(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 85
    const-string/jumbo v0, "CdmaSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setServiceState with state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 84
    return-void
.end method

.method public setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 64
    const-string/jumbo v0, "CdmaSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubscriptionInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public updateCdmaPreference(Landroid/preference/PreferenceActivity;Landroid/telephony/SubscriptionInfo;)V
    .locals 6
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 69
    .local v2, "slotId":I
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 70
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v3, "CdmaSimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSupportCdma(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const-string/jumbo v3, "current_operators_mccmnc"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 73
    .local v0, "isAdded":Z
    :goto_0
    const-string/jumbo v3, "CdmaSimStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez v0, :cond_0

    .line 75
    const v3, 0x7f080019

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setMccMnc()V

    .line 78
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setCdmaSidNid()V

    .line 79
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setCellId()V

    .line 67
    .end local v0    # "isAdded":Z
    :goto_1
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isAdded":Z
    goto :goto_0

    .line 81
    .end local v0    # "isAdded":Z
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->removeCdmaItems()V

    goto :goto_1
.end method

.method public updateNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "networktype"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkType with networktype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSupportCdma(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "LTE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "voiceNetworkName":Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->renameNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceNetworkName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "voiceNetworkName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateSignalStrength(Landroid/telephony/SignalStrength;Landroid/preference/Preference;)V
    .locals 11
    .param p1, "signal"    # Landroid/telephony/SignalStrength;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, -0x1

    .line 108
    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSupportCdma(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->isRegisterUnderLteNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setCdmaSignalStrength(Landroid/telephony/SignalStrength;Landroid/preference/Preference;)V

    .line 116
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    .line 117
    .local v3, "lteSignalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v2

    .line 118
    .local v2, "lteSignalAsu":I
    if-ne v6, v3, :cond_0

    .line 119
    const/4 v3, 0x0

    .line 122
    :cond_0
    if-ne v6, v2, :cond_1

    .line 123
    const/4 v2, 0x0

    .line 126
    :cond_1
    const-string/jumbo v5, "CdmaSimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lteSignalDbm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " lteSignalAsu = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mActivity:Landroid/preference/PreferenceActivity;

    new-array v6, v10, [Ljava/lang/Object;

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0b0a38

    .line 127
    invoke-virtual {v5, v7, v6}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "lteSignal":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "cdmaSignal":Ljava/lang/String;
    const-string/jumbo v5, "CdmaSimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cdmaSignal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " lteSignal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mActivity:Landroid/preference/PreferenceActivity;

    new-array v6, v10, [Ljava/lang/Object;

    .line 132
    aput-object v0, v6, v8

    aput-object v1, v6, v9

    const v7, 0x7f0b011f

    .line 131
    invoke-virtual {v5, v7, v6}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "summary":Ljava/lang/String;
    const-string/jumbo v5, "CdmaSimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "summary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0    # "cdmaSignal":Ljava/lang/String;
    .end local v1    # "lteSignal":Ljava/lang/String;
    .end local v2    # "lteSignalAsu":I
    .end local v3    # "lteSignalDbm":I
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    return-void
.end method
