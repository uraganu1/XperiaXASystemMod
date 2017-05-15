.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayAlertCdmaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iput-object p2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 213
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 215
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 217
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    .line 216
    invoke-static {v4, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    .line 218
    .local v1, "subIdCalls":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v2

    .line 219
    .local v2, "subIdSms":I
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get0(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v4

    if-nez v4, :cond_4

    .line 220
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    const v5, 0x7f0b0115

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_0
    :goto_0
    const-string/jumbo v4, "CdmaSimDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subIdCalls: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " subIdSms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 262
    const-string/jumbo v6, " mTargetSubId: "

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 262
    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 212
    return-void

    .line 224
    :cond_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v5}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap3(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 227
    :cond_2
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    .line 230
    :cond_3
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get0(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 235
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 236
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    const v5, 0x7f0b014d

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 239
    :cond_5
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 240
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v5}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap3(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 242
    :cond_6
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    .line 244
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 247
    :cond_7
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get0(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 248
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 249
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    const v5, 0x7f0b014c

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 252
    :cond_8
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v5}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap3(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 253
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 254
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    .line 256
    :cond_9
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v4}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v5, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
