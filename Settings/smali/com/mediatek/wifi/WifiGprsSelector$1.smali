.class Lcom/mediatek/wifi/WifiGprsSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/WifiGprsSelector;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    const-string/jumbo v5, "subscription"

    .line 151
    const-wide/16 v6, -0x1

    .line 150
    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    .local v2, "subId":J
    const-string/jumbo v5, "@M_WifiGprsSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changed default data subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget-object v5, v5, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v5}, Lcom/mediatek/wifi/WifiGprsSelector;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const/16 v6, 0x3e9

    invoke-static {v5, v6}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap2(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 157
    :cond_0
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v5, v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-set2(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 158
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap5(Lcom/mediatek/wifi/WifiGprsSelector;)V

    .line 147
    .end local v2    # "subId":J
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const-string/jumbo v7, "state"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/mediatek/wifi/WifiGprsSelector;->-set0(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 161
    const-string/jumbo v6, "@M_WifiGprsSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AIRPLANE_MODE state changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v8}, Lcom/mediatek/wifi/WifiGprsSelector;->-get0(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v6}, Lcom/mediatek/wifi/WifiGprsSelector;->-get1(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v7}, Lcom/mediatek/wifi/WifiGprsSelector;->-get0(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 163
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap5(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 162
    goto :goto_1

    .line 164
    :cond_4
    const-string/jumbo v6, "com.android.mms.transaction.START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 165
    const-string/jumbo v5, "@M_WifiGprsSelector"

    const-string/jumbo v6, "ssr: TRANSACTION_START in ApnSettings;"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v5, v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-set3(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 167
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v5}, Lcom/mediatek/wifi/WifiGprsSelector;->-get1(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v6}, Lcom/mediatek/wifi/WifiGprsSelector;->-get0(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-get4(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v4

    :cond_5
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    .line 168
    :cond_6
    const-string/jumbo v6, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 169
    const-string/jumbo v6, "@M_WifiGprsSelector"

    const-string/jumbo v7, "ssr: TRANSACTION_STOP in ApnSettings;"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v6, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->-set3(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 171
    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v5}, Lcom/mediatek/wifi/WifiGprsSelector;->-get1(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v6}, Lcom/mediatek/wifi/WifiGprsSelector;->-get0(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-get4(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v4

    :cond_7
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    .line 172
    :cond_8
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 173
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    .line 174
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    .line 173
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap1(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    goto/16 :goto_0

    .line 175
    :cond_9
    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string/jumbo v4, "@M_WifiGprsSelector"

    const-string/jumbo v5, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_1

    .line 180
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v5}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap0(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->-set4(Lcom/mediatek/wifi/WifiGprsSelector;I)I

    .line 181
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap5(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto/16 :goto_0
.end method
