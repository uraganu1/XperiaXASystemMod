.class Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAlive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher;
    .param p2, "x1"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;-><init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    # getter for: Lcom/sonymobile/rcs/utils/PeriodicRefresher;->mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->access$100(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PeriodicRefresher"

    .line 185
    invoke-static {p1, v0}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    new-instance v1, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;-><init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;)V

    # setter for: Lcom/sonymobile/rcs/utils/PeriodicRefresher;->mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->access$102(Lcom/sonymobile/rcs/utils/PeriodicRefresher;Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;)Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    .line 187
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    # getter for: Lcom/sonymobile/rcs/utils/PeriodicRefresher;->mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->access$100(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    # getter for: Lcom/sonymobile/rcs/utils/PeriodicRefresher;->mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->access$100(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 183
    return-void
.end method
