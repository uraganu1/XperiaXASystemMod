.class public Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdnContactsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimContactsReadyReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mOnChangeHandler:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;
    .param p2, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 309
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;-><init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->mOnChangeHandler:Ljava/lang/Runnable;

    .line 320
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->mCallback:Ljava/lang/Runnable;

    .line 319
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 326
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    .line 327
    const-string/jumbo v0, "sim_contacts"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 328
    .local v10, "lst":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v10, :cond_0

    .line 329
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 331
    .local v7, "b":Landroid/os/Bundle;
    const-string/jumbo v0, "contact_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 332
    const-string/jumbo v2, "raw_contact_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v7, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 333
    const-string/jumbo v4, "account_type"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    const-string/jumbo v5, "account_name"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    const-string/jumbo v6, "source_id"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->updateAdnContactsNow(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v8    # "b$iterator":Ljava/util/Iterator;
    .end local v10    # "lst":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get4(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get4(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->mOnChangeHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get4(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->mOnChangeHandler:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    :cond_1
    return-void
.end method
