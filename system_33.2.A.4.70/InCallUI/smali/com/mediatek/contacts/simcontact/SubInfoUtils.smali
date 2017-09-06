.class public Lcom/mediatek/contacts/simcontact/SubInfoUtils;
.super Ljava/lang/Object;
.source "SubInfoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSubscriber(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v0, 0x1

    .line 154
    if-ge p0, v0, :cond_0

    .line 155
    const-string/jumbo v0, "SubInfoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[checkSubscriber], invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    return v0
.end method

.method public static getActivatedSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveSubscriptionIdList()[I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    return-object v0
.end method

.method public static getColorUsingSubId(I)I
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v1, -0x1

    .line 128
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->checkSubscriber(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    return v1

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getSubInfoUsingSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 132
    .local v0, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    goto :goto_0
.end method

.method public static getIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->checkSubscriber(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    return-object v1

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getSubInfoUsingSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 187
    .local v0, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v2

    const/4 v3, -0x1

    .line 187
    invoke-virtual {v0, v1, v3, v2}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInvalidSlotId()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, -0x1

    return v0
.end method

.method public static getInvalidSubId()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, -0x1

    return v0
.end method

.method public static getSlotIdUsingSubId(I)I
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 108
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->checkSubscriber(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v1, -0x1

    return v1

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getSubInfoUsingSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 112
    .local v0, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getInvalidSlotId()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_0
.end method

.method public static getSubInfoUsingSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p0, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->checkSubscriber(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    return-object v4

    .line 73
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getActivatedSubInfoList()Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 75
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subscriptionInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 76
    .local v0, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 77
    return-object v0

    .line 81
    .end local v0    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subscriptionInfo$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method public static iconTintChange(II)Z
    .locals 7
    .param p0, "iconTint"    # I
    .param p1, "subId"    # I

    .prologue
    .line 90
    const-string/jumbo v4, "SubInfoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[iconTintChange] iconTint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x1

    .line 92
    .local v1, "isChanged":Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getActivatedSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 95
    return v1

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 99
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne p0, v4, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 104
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return v1
.end method
