.class Lcom/android/settings/sim/SimDialogActivity$5;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p2, "val$id"    # I
    .param p4, "val$context"    # Landroid/content/Context;

    .prologue
    .line 267
    .local p3, "val$subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v10, 0x1

    .line 273
    iget v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    packed-switch v7, :pswitch_data_0

    .line 376
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid dialog type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 377
    iget v9, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    .line 376
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 377
    const-string/jumbo v9, " in SIM dialog."

    .line 376
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 275
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$subInfoList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 277
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v7}, Lcom/android/settings/sim/SimDialogActivity;->-get1(Lcom/android/settings/sim/SimDialogActivity;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 278
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 277
    invoke-interface {v7, v8, v9}, Lcom/mediatek/settings/ext/ISimManagementExt;->switchDefaultDataSub(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 280
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetionForData(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 282
    iget v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 281
    invoke-static {v7, v8, v9}, Lcom/android/settings/sim/SimDialogActivity;->isEqualDefaultValue(Landroid/content/Context;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 283
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 284
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    .line 283
    invoke-static {v7, v8, v9}, Lcom/mediatek/settings/cdma/CdmaUtils;->startAlertCdmaDialog(Landroid/content/Context;II)V

    .line 380
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v7}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 269
    return-void

    .line 288
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 289
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    .line 288
    invoke-static {v7, v8}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSwitchCdmaCardToGsmCard(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 290
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 291
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    .line 290
    invoke-static {v7, v8, v9}, Lcom/mediatek/settings/cdma/CdmaUtils;->startAlertCdmaDialog(Landroid/content/Context;II)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 294
    invoke-static {v7}, Lcom/mediatek/settings/cdma/CdmaUtils;->isNonOmhSimInOmhDevice(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 296
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 297
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    .line 296
    invoke-static {v7, v8, v9}, Lcom/mediatek/settings/cdma/CdmaUtils;->startOmhDataPickDialog(Landroid/content/Context;II)V

    goto :goto_0

    .line 300
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 301
    .local v0, "defaultDataSubId":I
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-eq v7, v0, :cond_0

    .line 302
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sir.getSubscriptionId()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",defaultDataSubId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/sim/SimDialogActivity;->-wrap2(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V

    goto :goto_0

    .line 310
    .end local v0    # "defaultDataSubId":I
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 312
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 315
    .local v3, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v7}, Lcom/android/settings/sim/SimDialogActivity;->-get1(Lcom/android/settings/sim/SimDialogActivity;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeValue(I)I

    move-result p2

    .line 319
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-le p2, v7, :cond_4

    .line 320
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "phone account changed, do noting! value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 321
    const-string/jumbo v9, ", phone account size = "

    .line 320
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 322
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .line 320
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :cond_4
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {v7, p2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetionForCalls(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 329
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    invoke-static {v7, v8, p2}, Lcom/android/settings/sim/SimDialogActivity;->isEqualDefaultValue(Landroid/content/Context;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 332
    :cond_5
    iget-object v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 333
    if-ge p2, v10, :cond_7

    .line 334
    const/4 v7, 0x0

    .line 332
    :goto_1
    invoke-static {v8, v7}, Lcom/android/settings/sim/SimDialogActivity;->-wrap3(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto/16 :goto_0

    .line 330
    :cond_6
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    invoke-static {v7, p2, v8}, Lcom/mediatek/settings/cdma/CdmaUtils;->startAlertCdmaDialog(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 334
    :cond_7
    add-int/lit8 v7, p2, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 353
    .end local v3    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    const/4 v2, 0x0

    .line 354
    .local v2, "isSmsPrompt":Z
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SMS_PICK  value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-ge p2, v10, :cond_8

    .line 356
    const/4 v2, 0x1

    .line 367
    :goto_2
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SMS_PICK  isSmsPrompt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v2, v7}, Lcom/android/settings/sim/SimSettings;->setSMSPromptEnabled(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SMS_PICK  PhoneFactory.setSMSPromptEnabled() fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 358
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_8
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v8, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$subInfoList:Ljava/util/List;

    invoke-static {v7, v8, p2}, Lcom/android/settings/sim/SimDialogActivity;->-wrap1(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;I)I

    move-result v5

    .line 359
    .local v5, "subId":I
    if-lt v5, v10, :cond_9

    .line 360
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    .line 364
    :goto_3
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SMS_PICK  subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 362
    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
