.class public Lcom/mediatek/settings/sim/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainCapabilitySlotId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string/jumbo v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 139
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 141
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    const/4 v2, -0x1

    .line 143
    .local v2, "phoneId":I
    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMainCapabilityPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 149
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 150
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 151
    .local v3, "slotId":I
    const-string/jumbo v5, "TelephonyUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMainCapabilitySlotId()... slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v3

    .line 146
    .end local v3    # "slotId":I
    .end local v4    # "subId":I
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 34
    const-string/jumbo v2, "airplane_mode_on"

    .line 33
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCapabilitySwitching()Z
    .locals 6

    .prologue
    .line 77
    const-string/jumbo v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 76
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 78
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    const/4 v1, 0x0

    .line 80
    .local v1, "isSwitching":Z
    if-eqz v2, :cond_0

    .line 81
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    .end local v1    # "isSwitching":Z
    :goto_0
    const-string/jumbo v3, "TelephonyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSwitching = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 83
    .restart local v1    # "isSwitching":Z
    :cond_0
    :try_start_1
    const-string/jumbo v3, "TelephonyUtils"

    const-string/jumbo v4, "mTelephonyEx is null, returen false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isRadioOn(ILandroid/content/Context;)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string/jumbo v3, "phone"

    .line 43
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 45
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    .line 47
    .local v1, "isOn":Z
    const/4 v3, -0x1

    if-ne p0, v3, :cond_0

    const/4 v1, 0x0

    .line 52
    .end local v1    # "isOn":Z
    :goto_0
    const-string/jumbo v3, "TelephonyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v1

    .line 48
    .restart local v1    # "isOn":Z
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "isOn":Z
    goto :goto_0

    .line 49
    .local v1, "isOn":Z
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 100
    const/4 v1, -0x1

    .line 101
    .local v1, "subId":I
    if-eqz p1, :cond_0

    .line 102
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 103
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v1

    .line 105
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    :cond_0
    const-string/jumbo v2, "TelephonyUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhoneAccountHandleTosubscriptionId()... subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v1
.end method

.method public static setDefaultDataSubIdWithoutCapabilitySwitch(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 228
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 227
    return-void
.end method

.method public static setRadioCapability(Landroid/content/Context;I)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetSubId"    # I

    .prologue
    .line 162
    invoke-static/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    .line 163
    .local v10, "phoneNum":I
    const/4 v8, 0x1

    .line 164
    .local v8, "isSwitchSuccess":Z
    const-string/jumbo v13, "TelephonyUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setRadioCapability()...  targetSubId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v13, "persist.radio.simswitch"

    const-string/jumbo v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "curr3GSim":Ljava/lang/String;
    const-string/jumbo v13, "TelephonyUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "current 3G Sim = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v2, :cond_0

    const-string/jumbo v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 180
    :cond_0
    :try_start_0
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 179
    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 182
    .local v4, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v13, "phoneEx"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 181
    invoke-static {v13}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v5

    .line 183
    .local v5, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v4, :cond_2

    .line 184
    const-string/jumbo v13, "TelephonyUtils"

    const-string/jumbo v14, "Can not get phone service"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v13, 0x0

    return v13

    .line 170
    .end local v4    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v5    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "curr3GPhoneId":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    .line 172
    .local v9, "phoneId":I
    add-int/lit8 v13, v9, 0x1

    if-ne v1, v13, :cond_0

    .line 173
    const-string/jumbo v13, "TelephonyUtils"

    const-string/jumbo v14, "Current 3G phone equals target phone, don\'t trigger switch"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v8

    .line 187
    .end local v1    # "curr3GPhoneId":I
    .end local v9    # "phoneId":I
    .restart local v4    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v5    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_2
    :try_start_1
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_LTE_SUPPORT:Z

    .line 189
    .local v7, "isLteSupport":Z
    new-array v12, v10, [Landroid/telephony/RadioAccessFamily;

    .line 190
    .local v12, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v9, 0x0

    .restart local v9    # "phoneId":I
    :goto_0
    if-ge v9, v10, :cond_5

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v9, v13}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v11

    .line 192
    .local v11, "raf":I
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 193
    .local v6, "id":I
    const-string/jumbo v13, "TelephonyUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " phoneId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " subId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " RAF="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/high16 v13, 0x10000

    or-int/2addr v11, v13

    .line 195
    move/from16 v0, p1

    if-ne v6, v0, :cond_4

    .line 196
    or-int/lit8 v11, v11, 0x8

    .line 197
    if-eqz v7, :cond_3

    .line 198
    or-int/lit16 v11, v11, 0x4000

    .line 206
    :cond_3
    :goto_1
    const-string/jumbo v13, "TelephonyUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " newRAF="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v13, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v13, v9, v11}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v13, v12, v9

    .line 190
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 201
    :cond_4
    and-int/lit8 v11, v11, -0x9

    .line 202
    if-eqz v7, :cond_3

    .line 203
    and-int/lit16 v11, v11, -0x4001

    goto :goto_1

    .line 209
    .end local v6    # "id":I
    .end local v11    # "raf":I
    :cond_5
    invoke-interface {v5, v12}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 210
    const-string/jumbo v13, "TelephonyUtils"

    const-string/jumbo v14, "Set phone rat fail!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    const/4 v8, 0x0

    .line 219
    .end local v4    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v5    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v7    # "isLteSupport":Z
    .end local v9    # "phoneId":I
    .end local v12    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_6
    :goto_2
    return v8

    .line 213
    :catch_0
    move-exception v3

    .line 214
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v13, "TelephonyUtils"

    const-string/jumbo v14, "Set phone rat fail!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static subscriptionIdToPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 117
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 118
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 120
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 122
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 124
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 125
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 126
    return-object v1

    .line 130
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method
