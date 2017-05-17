.class Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;
.super Ljava/lang/Object;
.source "CallLogContentHelper.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiUpdaterExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;
    }
.end annotation


# instance fields
.field private mCommand:Ljava/lang/Runnable;

.field private mFinish:Z

.field private mLock:Ljava/lang/Object;

.field private mQueue:I

.field private runner:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mFinish:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mQueue:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mQueue:I

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mFinish:Z

    .line 703
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->runner:Ljava/lang/Runnable;

    .line 676
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mQueue:I

    .line 677
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mLock:Ljava/lang/Object;

    .line 678
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->runner:Ljava/lang/Runnable;

    const-string/jumbo v2, "CallLogContentHelper.UiUpdaterExecutor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 679
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 680
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 675
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "can\'t execute null command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UiUpdaterExecutor execute"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mCommand:Ljava/lang/Runnable;

    .line 690
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mQueue:I

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 683
    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tryStop()V
    .locals 2

    .prologue
    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mFinish:Z

    .line 698
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 696
    return-void

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
