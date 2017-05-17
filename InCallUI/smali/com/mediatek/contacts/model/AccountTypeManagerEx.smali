.class public Lcom/mediatek/contacts/model/AccountTypeManagerEx;
.super Ljava/lang/Object;
.source "AccountTypeManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountNameUsingSubId(I)Ljava/lang/String;
    .locals 5
    .param p0, "subId"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "iccCardType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "AccountTypeManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getAccountNameUsingSubId]subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",iccCardType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    const-string/jumbo v4, ",accountName:"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0
.end method

.method public static getAccountTypeUsingSubId(I)Ljava/lang/String;
    .locals 5
    .param p0, "subId"    # I

    .prologue
    .line 62
    const/4 v1, -0x1

    .line 63
    .local v1, "simtype":I
    const/4 v0, 0x0

    .line 65
    .local v0, "simAccountType":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getSimTypeBySubId(I)I

    move-result v1

    .line 66
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 67
    const-string/jumbo v0, "USIM Account"

    .line 75
    .end local v0    # "simAccountType":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v2, "AccountTypeManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getAccountTypeUsingSubId]subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",AccountType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v0

    .line 68
    .restart local v0    # "simAccountType":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 69
    const-string/jumbo v0, "SIM Account"

    .local v0, "simAccountType":Ljava/lang/String;
    goto :goto_0

    .line 70
    .local v0, "simAccountType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    if-ne v2, v1, :cond_3

    .line 71
    const-string/jumbo v0, "UIM Account"

    .local v0, "simAccountType":Ljava/lang/String;
    goto :goto_0

    .line 72
    .local v0, "simAccountType":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    .line 73
    const-string/jumbo v0, "CSIM Account"

    .local v0, "simAccountType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static loadSimAndLocalAccounts(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p1, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v9, 0x0

    .line 113
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getActivatedSubInfoList()Ljava/util/List;

    move-result-object v5

    .line 114
    .local v5, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string/jumbo v6, "AccountTypeManagerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[loadSimAndLocalAccounts]subscriptionInfoList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 116
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subscriptionInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 117
    .local v3, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 118
    .local v2, "subId":I
    invoke-static {v2}, Lcom/mediatek/contacts/model/AccountTypeManagerEx;->getAccountNameUsingSubId(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/contacts/model/AccountTypeManagerEx;->getAccountTypeUsingSubId(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    new-instance v6, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v6, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    new-instance v6, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-direct {v6, v0, v1, v2}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    const-string/jumbo v6, "AccountTypeManagerEx"

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[loadSimAndLocalAccounts]new AccountWithDataSetEx, AccountName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    const-string/jumbo v8, ", AccountType: "

    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "subId":I
    .end local v3    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subscriptionInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->isUsingTwoPanes()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    const-string/jumbo v6, "AccountTypeManagerEx"

    const-string/jumbo v7, "[loadSimAndLocalAccounts]it is tablet"

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v7, "Tablet"

    .line 146
    const-string/jumbo v8, "Local Phone Account"

    .line 145
    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v7, "Tablet"

    .line 148
    const-string/jumbo v8, "Local Phone Account"

    .line 147
    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v7, "Tablet"

    .line 150
    const-string/jumbo v8, "Local Phone Account"

    .line 149
    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_1
    return-void

    .line 152
    :cond_3
    const-string/jumbo v6, "AccountTypeManagerEx"

    const-string/jumbo v7, "[loadSimAndLocalAccounts]it is phone"

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v7, "Phone"

    .line 154
    const-string/jumbo v8, "Local Phone Account"

    .line 153
    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v7, "Phone"

    .line 156
    const-string/jumbo v8, "Local Phone Account"

    .line 155
    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string/jumbo v7, "Phone"

    .line 158
    const-string/jumbo v8, "Local Phone Account"

    .line 157
    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static registerReceiverOnSimStateAndInfoChanged(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 100
    const-string/jumbo v1, "AccountTypeManagerEx"

    const-string/jumbo v2, "[registerReceiverOnSimStateAndInfoChanged]..."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "simFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method
