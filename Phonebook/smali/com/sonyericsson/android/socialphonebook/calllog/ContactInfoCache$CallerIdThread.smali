.class Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;
.super Ljava/lang/Thread;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerIdThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->mDone:Z

    .line 519
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 532
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CallerIdThread("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") begin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->mDone:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CallerIdThread("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void

    .line 534
    :cond_2
    const/4 v1, 0x0

    .line 535
    .local v1, "request":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 537
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 538
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mActivityIsBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v2

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mRequests count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    const-string/jumbo v5, " mContactInfo count: "

    .line 540
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 540
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "request":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    .line 552
    if-eqz v1, :cond_0

    .line 553
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V

    goto/16 :goto_0

    .line 546
    .restart local v1    # "request":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedList;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 547
    :catch_0
    move-exception v0

    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 535
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    .end local v1    # "request":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public tryStop()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerIdThread;->mDone:Z

    .line 522
    return-void
.end method
