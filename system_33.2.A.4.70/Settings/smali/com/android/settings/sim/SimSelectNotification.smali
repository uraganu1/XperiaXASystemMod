.class public Lcom/android/settings/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 195
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 192
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 173
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    const v6, 0x7f0200d6

    .line 173
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 175
    const v6, 0x7f0e0041

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 173
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 176
    const v6, 0x7f0b0a39

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 177
    const v6, 0x7f0b0a3a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 180
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/sim/SimSelectNotification;->customizeSimDisplay(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 182
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 186
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 189
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 170
    return-void
.end method

.method private customizeSimDisplay(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/4 v5, -0x1

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 209
    .local v1, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0b0a39

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f0b0a3a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "text":Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    .line 213
    .local v0, "miscExt":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-interface {v0, v3, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-interface {v0, v2, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 220
    invoke-virtual {p2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    return-void
.end method

.method private isSimDialogNeeded(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "isNeeded":Z
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_CT6M_SUPPORT:Z

    if-nez v1, :cond_0

    .line 230
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->isSimDialogNeeded()Z

    move-result v0

    .line 232
    .end local v0    # "isNeeded":Z
    :cond_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->shouldDisableForAutoSanity()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 54
    return-void

    .line 63
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v11

    .line 66
    .local v11, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string/jumbo v14, "simDetectStatus"

    const/4 v15, 0x0

    .line 65
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, "detectedType":I
    const-string/jumbo v14, "SimSelectNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sub info update, subs = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v14, 0x4

    if-ne v2, v14, :cond_1

    .line 69
    return-void

    .line 71
    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    .line 72
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/mediatek/settings/cdma/CdmaUtils;->checkCdmaSimStatus(Landroid/content/Context;I)V

    .line 77
    :cond_2
    const-string/jumbo v14, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 76
    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 78
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v12

    .line 79
    .local v12, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    .line 80
    .local v6, "numSlots":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 81
    const-string/jumbo v15, "device_provisioned"

    const/16 v16, 0x0

    .line 80
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_4

    const/4 v4, 0x1

    .line 84
    .local v4, "isInProvisioning":Z
    :goto_0
    const/4 v14, 0x2

    if-lt v6, v14, :cond_3

    if-eqz v4, :cond_5

    .line 85
    :cond_3
    return-void

    .line 80
    .end local v4    # "isInProvisioning":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isInProvisioning":Z
    goto :goto_0

    .line 89
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 92
    const-string/jumbo v14, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "simStatus":Ljava/lang/String;
    const-string/jumbo v14, "ABSENT"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 94
    const-string/jumbo v14, "LOADED"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 93
    :goto_1
    if-nez v14, :cond_8

    .line 95
    const-string/jumbo v14, "SimSelectNotification"

    const-string/jumbo v15, "sim state is not Absent or Loaded"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v6, :cond_9

    .line 108
    invoke-virtual {v13, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    .line 109
    .local v10, "state":I
    const/4 v14, 0x1

    if-eq v10, v14, :cond_6

    .line 110
    const/4 v14, 0x5

    if-eq v10, v14, :cond_6

    .line 111
    if-eqz v10, :cond_6

    .line 112
    const-string/jumbo v14, "SimSelectNotification"

    const-string/jumbo v15, "All sims not in valid state yet"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 93
    .end local v3    # "i":I
    .end local v10    # "state":I
    :cond_7
    const/4 v14, 0x1

    goto :goto_1

    .line 103
    :cond_8
    const-string/jumbo v14, "SimSelectNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "simstatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    .restart local v3    # "i":I
    :cond_9
    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 123
    .local v7, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_b

    .line 124
    :cond_a
    const-string/jumbo v14, "SimSelectNotification"

    const-string/jumbo v15, "Subscription list is empty"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 129
    :cond_b
    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 132
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v14

    .line 131
    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    .line 134
    .local v1, "dataSelected":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v14

    .line 133
    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v9

    .line 137
    .local v9, "smsSelected":Z
    if-eqz v1, :cond_c

    if-eqz v9, :cond_c

    .line 138
    const-string/jumbo v14, "SimSelectNotification"

    const-string/jumbo v15, "Data & SMS default sims are selected. No notification"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 143
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/sim/SimSelectNotification;->createNotification(Landroid/content/Context;)V

    .line 146
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/sim/SimSelectNotification;->isSimDialogNeeded(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 147
    return-void

    .line 150
    :cond_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 152
    new-instance v5, Landroid/content/Intent;

    const-class v14, Lcom/android/settings/sim/SimDialogActivity;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v5, "newIntent":Landroid/content/Intent;
    const/high16 v14, 0x10000000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    sget-object v14, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v15, 0x3

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sget-object v15, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/cdma/OmhEventHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/cdma/OmhEventHandler;

    move-result-object v14

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/mediatek/settings/cdma/OmhEventHandler;->sendEmptyMessage(I)Z

    .line 51
    .end local v5    # "newIntent":Landroid/content/Intent;
    :cond_e
    :goto_4
    return-void

    .line 159
    :cond_f
    if-nez v1, :cond_e

    .line 161
    new-instance v5, Landroid/content/Intent;

    const-class v14, Lcom/android/settings/sim/SimDialogActivity;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .restart local v5    # "newIntent":Landroid/content/Intent;
    const/high16 v14, 0x10000000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    sget-object v14, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/cdma/OmhEventHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/cdma/OmhEventHandler;

    move-result-object v14

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/mediatek/settings/cdma/OmhEventHandler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method
