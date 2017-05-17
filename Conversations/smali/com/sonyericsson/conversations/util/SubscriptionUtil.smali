.class public Lcom/sonyericsson/conversations/util/SubscriptionUtil;
.super Ljava/lang/Object;
.source "SubscriptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;,
        Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionUtilHolder;,
        Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;,
        Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;
    }
.end annotation


# static fields
.field private static sMockedSubscriptionUtil:Lcom/sonyericsson/conversations/util/SubscriptionUtil;


# instance fields
.field PHONE_ID_SIM_1:I

.field PHONE_ID_SIM_2:I

.field protected final mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionInfoTask:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mSubscriptionsUpdatedListener:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionInfoTask:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;)Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionInfoTask:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->PHONE_ID_SIM_1:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->PHONE_ID_SIM_2:I

    .line 60
    return-void
.end method

.method private getActiveSubscriptionInfo()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

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
    .line 336
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 341
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 342
    new-instance v1, Lcom/sonyericsson/conversations/util/SubscriptionUtil$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$1;-><init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->sMockedSubscriptionUtil:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->sMockedSubscriptionUtil:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionUtilHolder;->-get0()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSimCardSlotIndexToIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "simCardSlotIndex"    # I

    .prologue
    .line 105
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    return-object p1
.end method

.method public addSubscriptionIdToIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "subscriptionId"    # I

    .prologue
    .line 118
    const-string/jumbo v0, "subscription"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    return-object p1
.end method

.method public getActiveSubscriptionIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 181
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v2, "subscriptionIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 183
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-object v2
.end method

.method public getSimNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionInfoFromSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 243
    .local v0, "record":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimOperator(I)[Ljava/lang/String;
    .locals 13
    .param p1, "subscriptionId"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 206
    iget-object v8, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 207
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v2

    .line 209
    .local v2, "mcc":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v7, "paddedMcc":Ljava/lang/StringBuilder;
    div-int/lit8 v8, v2, 0x64

    if-nez v8, :cond_2

    .line 211
    div-int/lit8 v8, v2, 0xa

    if-nez v8, :cond_1

    .line 212
    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_1
    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "mccString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v4

    .line 218
    .local v4, "mnc":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "mncString":Ljava/lang/String;
    const/16 v8, 0x63

    if-le v4, v8, :cond_3

    .line 220
    new-array v6, v10, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 229
    .local v6, "operatorInfo":[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 221
    .end local v6    # "operatorInfo":[Ljava/lang/String;
    :cond_3
    const/16 v8, 0x9

    if-le v4, v8, :cond_4

    .line 222
    new-array v6, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    .line 222
    .restart local v6    # "operatorInfo":[Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v6    # "operatorInfo":[Ljava/lang/String;
    :cond_4
    new-array v6, v12, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    .line 225
    .restart local v6    # "operatorInfo":[Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "mcc":I
    .end local v3    # "mccString":Ljava/lang/String;
    .end local v4    # "mnc":I
    .end local v5    # "mncString":Ljava/lang/String;
    .end local v6    # "operatorInfo":[Ljava/lang/String;
    .end local v7    # "paddedMcc":Ljava/lang/StringBuilder;
    :cond_5
    new-array v8, v9, [Ljava/lang/String;

    return-object v8
.end method

.method public getSlotIndexFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    const-string/jumbo v0, "slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlotIndexFromSubscriptionId(I)I
    .locals 4
    .param p1, "subscriptionId"    # I

    .prologue
    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "slotIndex":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 267
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    return v3

    .line 271
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v2
.end method

.method public getSubscriptionIdFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    const-string/jumbo v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSubscriptionIdFromSlotIndex(I)I
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 293
    const/4 v2, -0x1

    .line 294
    .local v2, "subscriptionId":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 295
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3

    .line 299
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v2
.end method

.method public getSubscriptionInfoFromSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "simSlotIndex"    # I

    .prologue
    .line 309
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 310
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 311
    return-object v0

    .line 314
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 90
    new-instance v0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;-><init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionInfoTask:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionInfoTask:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v1, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;-><init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 88
    return-void
.end method

.method public isActiveSubscriptionId(I)Z
    .locals 2
    .param p1, "subscriptionId"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiSimActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSimDevice()Z
    .locals 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v0

    .line 142
    .local v0, "sub":I
    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimActive(I)Z
    .locals 4
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "simIsPresent":Z
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 154
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 155
    const/4 v2, 0x1

    .line 159
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v2
.end method

.method public isSimReadyForSubId(Landroid/content/Context;IIZ)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "slotId"    # I
    .param p4, "isSlotId"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 407
    const/4 v2, 0x1

    .line 408
    .local v2, "isEnabled":Z
    const/4 v3, -0x3

    .line 409
    .local v3, "mSlotId":I
    if-eqz p4, :cond_0

    .line 410
    move v3, p3

    .line 414
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    .line 415
    .local v5, "state":I
    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 416
    return v8

    .line 412
    .end local v5    # "state":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSlotIndexFromSubscriptionId(I)I

    move-result v3

    goto :goto_0

    .line 419
    .restart local v5    # "state":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "msim_mode_setting"

    .line 418
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 420
    .local v4, "mode":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    .line 421
    const/4 v2, 0x1

    .line 445
    :cond_2
    :goto_1
    return v2

    .line 422
    :cond_3
    if-nez v4, :cond_6

    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "airplaneModeOn":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 426
    const-string/jumbo v7, "airplane_mode_on"

    .line 425
    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v0, 0x1

    .line 430
    :goto_2
    if-eqz v0, :cond_5

    .line 431
    const/4 v2, 0x1

    goto :goto_1

    .line 425
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 433
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 436
    .end local v0    # "airplaneModeOn":Z
    :cond_6
    iget v6, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->PHONE_ID_SIM_1:I

    if-ne v3, v6, :cond_8

    .line 437
    if-ne v4, v9, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 438
    :cond_8
    iget v6, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->PHONE_ID_SIM_2:I

    if-ne v3, v6, :cond_2

    .line 439
    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 427
    .restart local v0    # "airplaneModeOn":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_2
.end method

.method public isValidSubscriptionId(I)Z
    .locals 1
    .param p1, "subscriptionId"    # I

    .prologue
    .line 169
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSubscriptionsUpdatedListener()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionsUpdatedListener:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;

    .line 320
    return-void
.end method

.method public setSubscriptionsUpdatedListener(Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionsUpdatedListener:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;

    .line 330
    return-void
.end method
