.class Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;
.super Ljava/lang/Object;
.source "AdnContactsCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get5(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get3(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->-get0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-wrap0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 310
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-set0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Z)Z

    goto :goto_0
.end method
