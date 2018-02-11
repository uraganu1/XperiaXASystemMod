.class public Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;
.super Landroid/app/Activity;
.source "CdmaSimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;
    }
.end annotation


# instance fields
.field private mActionType:I

.field private mHandle:Landroid/telecom/PhoneAccountHandle;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetSubId:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->enableStatusBarNavigation(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 53
    iput v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 59
    new-instance v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method private displayAlertCdmaDialog()V
    .locals 18

    .prologue
    .line 165
    const-string/jumbo v14, "CdmaSimDialogActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "displayAlertCdmaDialog()... + c2K support: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 166
    sget-boolean v16, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    .line 165
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 168
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 169
    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v11

    .line 171
    .local v11, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v11}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v9

    .line 172
    .local v9, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_2

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v14}, Lcom/mediatek/settings/sim/TelephonyUtils;->phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 174
    const-string/jumbo v14, "CdmaSimDialogActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "convert "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mHandle:Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to subId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v9    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    :goto_1
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    .line 180
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 179
    invoke-virtual {v14, v15}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v10

    .line 181
    .local v10, "targetSir":Landroid/telephony/SubscriptionInfo;
    const/4 v3, 0x0

    .line 182
    .local v3, "defaultSir":Landroid/telephony/SubscriptionInfo;
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v7

    .line 183
    .local v7, "list":[I
    const/4 v14, 0x0

    array-length v15, v7

    .end local v3    # "defaultSir":Landroid/telephony/SubscriptionInfo;
    :goto_2
    if-ge v14, v15, :cond_5

    aget v6, v7, v14

    .line 184
    .local v6, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v6, v0, :cond_1

    .line 185
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 183
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 172
    .end local v6    # "i":I
    .end local v7    # "list":[I
    .end local v10    # "targetSir":Landroid/telephony/SubscriptionInfo;
    .restart local v9    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    .line 175
    .end local v9    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    if-eqz v14, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 177
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    invoke-static {v2, v14}, Lcom/mediatek/settings/sim/TelephonyUtils;->subscriptionIdToPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mHandle:Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 188
    .restart local v7    # "list":[I
    .restart local v10    # "targetSir":Landroid/telephony/SubscriptionInfo;
    :cond_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v4, "dialog":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, ""

    .line 190
    .local v1, "cdmaCardCompetionMessage":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 191
    .local v5, "gsmCdamCardMesage":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-eqz v10, :cond_6

    .line 192
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 194
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 195
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    .line 196
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 193
    const v16, 0x7f0b0149

    .line 192
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 200
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    .line 201
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 202
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    .line 198
    const v16, 0x7f0b014a

    .line 197
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 205
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 204
    invoke-static {v2, v14}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSwitchCdmaCardToGsmCard(Landroid/content/Context;I)Z

    move-result v14

    if-nez v14, :cond_7

    .line 206
    move-object v8, v1

    .line 207
    .local v8, "message":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 208
    invoke-static {v2, v14}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSwitchCdmaCardToGsmCard(Landroid/content/Context;I)Z

    move-result v14

    if-nez v14, :cond_8

    .line 210
    const v13, 0x104000a

    .line 211
    .local v13, "textIdPositive":I
    :goto_4
    new-instance v14, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 266
    invoke-static {v2, v14}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSwitchCdmaCardToGsmCard(Landroid/content/Context;I)Z

    move-result v14

    if-nez v14, :cond_9

    .line 268
    const/high16 v12, 0x1040000

    .line 269
    .local v12, "textIdNegative":I
    :goto_5
    new-instance v14, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v12, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    new-instance v14, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance v14, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    return-void

    .line 206
    .end local v8    # "message":Ljava/lang/String;
    .end local v12    # "textIdNegative":I
    .end local v13    # "textIdPositive":I
    :cond_7
    move-object v8, v5

    .restart local v8    # "message":Ljava/lang/String;
    goto :goto_3

    .line 210
    :cond_8
    const v13, 0x7f0b0155

    .restart local v13    # "textIdPositive":I
    goto :goto_4

    .line 268
    :cond_9
    const v12, 0x7f0b0156

    .restart local v12    # "textIdNegative":I
    goto :goto_5
.end method

.method private displayDualCdmaDialog()V
    .locals 3

    .prologue
    .line 129
    const-string/jumbo v1, "CdmaSimDialogActivity"

    const-string/jumbo v2, "displayDualCdmaDialog..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b014b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 132
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$3;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method

.method private displayOmhDataPickDialog()V
    .locals 3

    .prologue
    .line 339
    const-string/jumbo v1, "CdmaSimDialogActivity"

    const-string/jumbo v2, "displayOmhDataPickDialog..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b014f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 342
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    const v2, 0x7f0b0155

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$13;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$13;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    const v2, 0x7f0b0156

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 338
    return-void
.end method

.method private displayOmhWarningDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    const-string/jumbo v1, "CdmaSimDialogActivity"

    const-string/jumbo v2, "displayOmhWarningDialog..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b014e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 304
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$10;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$10;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$11;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$11;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 328
    invoke-direct {p0, v3}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->enableStatusBarNavigation(Z)V

    .line 300
    return-void
.end method

.method private enableStatusBarNavigation(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "state":I
    if-nez p1, :cond_0

    .line 371
    const/high16 v0, 0x200000

    .line 372
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 373
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 374
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 376
    :cond_0
    const-string/jumbo v1, "CdmaSimDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableStatusBarNavigation, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 367
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 68
    return-void
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 381
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 382
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 383
    iget v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    if-nez v1, :cond_0

    .line 384
    const v1, 0x7f0b0a21

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 380
    :cond_0
    return-void
.end method

.method private setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 389
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 390
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 388
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 394
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 395
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 393
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 87
    const-string/jumbo v2, "CdmaSimDialogActivity"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 90
    .local v1, "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->init()V

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v2, "dialog_type"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "dialogType":I
    const-string/jumbo v2, "target_subid"

    .line 93
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 95
    const-string/jumbo v2, "action_type"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    .line 96
    const-string/jumbo v2, "CdmaSimDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dialogType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " argetSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    const-string/jumbo v4, " actionType: "

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    iget v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    const-string/jumbo v4, " sent."

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayDualCdmaDialog()V

    .line 86
    .end local v0    # "dialogType":I
    :goto_0
    return-void

    .line 103
    .restart local v0    # "dialogType":I
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayAlertCdmaDialog()V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayOmhWarningDialog()V

    goto :goto_0

    .line 109
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayOmhDataPickDialog()V

    goto :goto_0

    .line 116
    .end local v0    # "dialogType":I
    :cond_0
    const-string/jumbo v2, "CdmaSimDialogActivity"

    const-string/jumbo v3, "unexpect happend"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 125
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->enableStatusBarNavigation(Z)V

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    return-void
.end method
