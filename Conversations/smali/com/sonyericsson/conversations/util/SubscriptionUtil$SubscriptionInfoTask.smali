.class Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;
.super Landroid/os/AsyncTask;
.source "SubscriptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/SubscriptionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;-><init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 376
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->-wrap0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "records"    # Ljava/lang/Object;

    .prologue
    .line 381
    check-cast p1, Ljava/util/List;

    .end local p1    # "records":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    iget-object v2, v2, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 383
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 384
    .local v0, "record":Landroid/telephony/SubscriptionInfo;
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New SubscriptionInfo added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimReadyForSubId(Landroid/content/Context;IIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    iget-object v2, v2, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mActiveSubscriptionInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    .end local v0    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 392
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    iget-object v2, v2, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionsUpdatedListener:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;

    if-eqz v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    iget-object v2, v2, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->mSubscriptionsUpdatedListener:Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;->activeSubscriptionsChanged()V

    .line 381
    :cond_3
    return-void
.end method
