.class public Lcom/mediatek/settings/cdma/CdmaUtils;
.super Ljava/lang/Object;
.source "CdmaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCdmaSimStatus(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simDetectNum"    # I

    .prologue
    .line 110
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCdmaWaringDialog, simDetectNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v2, 0x1

    .line 112
    .local v2, "twoCdmaInsert":Z
    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 114
    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 122
    :cond_2
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "twoCdmaInsert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v2, :cond_3

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.mediatek.settings.cdma.SIM_DIALOG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string/jumbo v3, "dialog_type"

    .line 127
    const/4 v4, 0x0

    .line 126
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public static hasNonOmhRecord(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v7, 0x0

    .line 433
    const-string/jumbo v4, "sub_info"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 434
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "non_omh_sub_list"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "subList":Ljava/lang/String;
    const-string/jumbo v4, "CdmaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasNonOmhRecord, subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", subList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "records":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 439
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 441
    const-string/jumbo v4, "CdmaUtils"

    const-string/jumbo v5, "record hit~~"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v4, 0x1

    return v4

    .line 438
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "i":I
    :cond_1
    return v7
.end method

.method public static isCdamCardAndGsmCard(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "isCdmaCard":Z
    const/4 v2, 0x0

    .line 344
    .local v2, "isGsmCard":Z
    const/4 v3, 0x0

    .line 345
    .local v3, "simCount":I
    if-eqz p0, :cond_0

    .line 346
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 348
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 349
    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    const/4 v1, 0x1

    .line 348
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 355
    :cond_2
    const-string/jumbo v5, "CdmaUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCdmaCard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isGsmCard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 356
    const-string/jumbo v7, " solution2 support: "

    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 356
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    const-string/jumbo v7, " sim switch is support: "

    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    if-eqz v5, :cond_4

    :cond_3
    :goto_2
    return v4

    .line 359
    :cond_4
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    if-nez v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2
.end method

.method public static isCdmaCard(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "isCdmaCard":Z
    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSupportCdma(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x1

    .line 97
    :cond_1
    const-string/jumbo v1, "CdmaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isCdmaCard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v0
.end method

.method public static isCdmaCardCompetion(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 157
    const/4 v1, 0x1

    .line 158
    .local v1, "isCdmaCard":Z
    const/4 v2, 0x1

    .line 159
    .local v2, "isCompetition":Z
    const/4 v3, 0x0

    .line 160
    .local v3, "simCount":I
    if-eqz p0, :cond_0

    .line 161
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 163
    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 164
    const/4 v0, 0x0

    .end local v1    # "isCdmaCard":Z
    .end local v2    # "isCompetition":Z
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 165
    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v1

    .line 167
    :goto_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 169
    .local v4, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_3

    .line 170
    if-eqz v2, :cond_2

    .line 171
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v6

    .line 172
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 171
    invoke-virtual {v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->isInHomeNetwork(I)Z

    move-result v2

    .line 164
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v4    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isCdmaCard":Z
    goto :goto_1

    .line 170
    .end local v1    # "isCdmaCard":Z
    .restart local v4    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isCompetition":Z
    goto :goto_2

    .line 174
    .end local v2    # "isCompetition":Z
    :cond_3
    const/4 v2, 0x0

    .line 182
    .end local v0    # "i":I
    .end local v4    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    :goto_3
    const-string/jumbo v6, "CdmaUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCdmaCard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isCompletition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    const-string/jumbo v8, " is Suppport SIM switch: "

    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    if-eqz v6, :cond_7

    :cond_5
    :goto_4
    return v5

    .line 179
    .restart local v1    # "isCdmaCard":Z
    .restart local v2    # "isCompetition":Z
    :cond_6
    const/4 v1, 0x0

    .line 180
    const/4 v2, 0x0

    goto :goto_3

    .line 184
    .end local v1    # "isCdmaCard":Z
    .end local v2    # "isCompetition":Z
    :cond_7
    const/4 v5, 0x1

    goto :goto_4
.end method

.method public static isCdmaCardCompetionForCalls(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetItem"    # I

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, "shouldDisplay":Z
    const/4 v3, -0x1

    .line 226
    .local v3, "subId":I
    if-eqz p0, :cond_0

    .line 227
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 229
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const/4 v5, 0x1

    if-ge p1, v5, :cond_2

    const/4 v0, 0x0

    .line 232
    :goto_0
    invoke-static {p0, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v3

    .line 234
    .end local v1    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    invoke-static {p0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilitySlotId(Landroid/content/Context;)I

    move-result v5

    .line 236
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    .line 235
    if-eq v5, v6, :cond_3

    const/4 v2, 0x1

    .line 238
    :cond_1
    :goto_1
    const-string/jumbo v5, "CdmaUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldDisplay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " targetItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetion(Landroid/content/Context;)Z

    move-result v5

    :goto_2
    return v5

    .line 231
    .restart local v1    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    goto :goto_0

    .line 235
    .end local v0    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 239
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isCdmaCardCompetionForData(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetion(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isNonOmhSimInOmhDevice(I)Z
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->isOmhEnable(I)Z

    move-result v1

    .line 370
    .local v1, "isOmhEnable":Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->isOmhCard(I)Z

    move-result v0

    .line 371
    .local v0, "isOmhCard":Z
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOmhEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "isOmhCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSupportCdma(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "isSupportCdma":Z
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSupportCardType(I)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "type":[Ljava/lang/String;
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportCdma, slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v2, :cond_2

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 76
    const-string/jumbo v3, "RUIM"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "CSIM"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :cond_0
    const/4 v1, 0x1

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " isSupportCdma = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v1
.end method

.method public static isSwitchCdmaCardToGsmCard(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetSubId"    # I

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "isGsmCardForTarget":Z
    const/4 v0, 0x0

    .line 257
    .local v0, "isCdmaCardForMainCapability":Z
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    if-nez v4, :cond_0

    .line 258
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 257
    if-eqz v4, :cond_0

    .line 259
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    if-eqz v4, :cond_1

    .line 265
    .end local v0    # "isCdmaCardForMainCapability":Z
    :cond_0
    :goto_0
    const-string/jumbo v4, "CdmaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isGsmCardForTarget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    const-string/jumbo v6, " isCdmaCardForMainCapability: "

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    const-string/jumbo v6, " sim switch is support: "

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 267
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz v1, :cond_3

    :goto_1
    return v0

    .line 260
    .restart local v0    # "isCdmaCardForMainCapability":Z
    :cond_1
    invoke-static {p0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilitySlotId(Landroid/content/Context;)I

    move-result v2

    .line 261
    .local v2, "mainCapabilitySlotId":I
    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v0

    .line 262
    .local v0, "isCdmaCardForMainCapability":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 263
    .local v3, "targetDataSlotId":I
    invoke-static {v3}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "isCdmaCardForMainCapability":Z
    .end local v2    # "mainCapabilitySlotId":I
    .end local v3    # "targetDataSlotId":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static recordNonOmhSub(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 409
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recordNonOmhSub, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    const-string/jumbo v3, "sub_info"

    .line 414
    const/4 v4, 0x0

    .line 413
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "non_omh_sub_list"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "subList":Ljava/lang/String;
    const-string/jumbo v3, "CdmaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recordNonOmhSub, subList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "non_omh_sub_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    return-void

    .line 421
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static shouldSwichCapabilityForCalls(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "isCdmaCardForTarget":Z
    const/4 v1, 0x0

    .line 318
    .local v1, "isGsmCardForMainCapability":Z
    const/4 v3, -0x1

    .line 319
    .local v3, "subId":I
    if-eqz p0, :cond_0

    .line 320
    invoke-static {p0, p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v3

    .line 322
    :cond_0
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    if-eqz v5, :cond_2

    .line 330
    .end local v0    # "isCdmaCardForTarget":Z
    :cond_1
    :goto_0
    const-string/jumbo v5, "CdmaUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCdmaCardForTarget: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    const-string/jumbo v7, " isGsmCardForMainCapability: "

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 332
    const-string/jumbo v7, " sim switch is support: "

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 332
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz v0, :cond_4

    .end local v1    # "isGsmCardForMainCapability":Z
    :goto_1
    return v1

    .line 324
    .restart local v0    # "isCdmaCardForTarget":Z
    .restart local v1    # "isGsmCardForMainCapability":Z
    :cond_2
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    if-nez v5, :cond_1

    .line 325
    invoke-static {p0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilitySlotId(Landroid/content/Context;)I

    move-result v2

    .line 326
    .local v2, "mainCapabilitySlotId":I
    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    .line 327
    :goto_2
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 328
    .local v4, "targetCallsSlotId":I
    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v0

    .local v0, "isCdmaCardForTarget":Z
    goto :goto_0

    .line 326
    .end local v4    # "targetCallsSlotId":I
    .local v0, "isCdmaCardForTarget":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 333
    .end local v0    # "isCdmaCardForTarget":Z
    .end local v2    # "mainCapabilitySlotId":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static shouldSwitchCapability(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetSubId"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "isCdmaCardForTarget":Z
    const/4 v1, 0x0

    .line 287
    .local v1, "isGsmCardForMainCapability":Z
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    if-nez v4, :cond_0

    .line 288
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 287
    if-eqz v4, :cond_0

    .line 289
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    if-eqz v4, :cond_1

    .line 295
    .end local v0    # "isCdmaCardForTarget":Z
    :cond_0
    :goto_0
    const-string/jumbo v4, "CdmaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCdmaCardForTarget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    const-string/jumbo v6, " isGsmCardForMainCapability: "

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    const-string/jumbo v6, " sim switch is support: "

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_DISABLE_CAPABILITY_SWITCH:Z

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v0, :cond_3

    .end local v1    # "isGsmCardForMainCapability":Z
    :goto_1
    return v1

    .line 290
    .restart local v0    # "isCdmaCardForTarget":Z
    .restart local v1    # "isGsmCardForMainCapability":Z
    :cond_1
    invoke-static {p0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilitySlotId(Landroid/content/Context;)I

    move-result v2

    .line 291
    .local v2, "mainCapabilitySlotId":I
    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 292
    :goto_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 293
    .local v3, "targetSmsSlotId":I
    invoke-static {v3}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v0

    .local v0, "isCdmaCardForTarget":Z
    goto :goto_0

    .line 291
    .end local v3    # "targetSmsSlotId":I
    .local v0, "isCdmaCardForTarget":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 298
    .end local v0    # "isCdmaCardForTarget":Z
    .end local v2    # "mainCapabilitySlotId":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static startAlertCdmaDialog(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetSubId"    # I
    .param p2, "actionType"    # I

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.settings.cdma.SIM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "dialog_type"

    .line 142
    const/4 v2, 0x1

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "target_subid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "action_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public static startOmhDataPickDialog(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetSubId"    # I
    .param p2, "actionType"    # I

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.settings.cdma.SIM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    const-string/jumbo v1, "dialog_type"

    .line 397
    const/4 v2, 0x3

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string/jumbo v1, "target_subid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string/jumbo v1, "action_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 393
    return-void
.end method

.method public static startOmhWarningDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.settings.cdma.SIM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "dialog_type"

    .line 383
    const/4 v2, 0x2

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method
