.class Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;
.super Landroid/os/Handler;
.source "AddressBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/addressbook/AddressBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckHandler"
.end annotation


# instance fields
.field private final check:Ljava/lang/Object;

.field private isCleanupNeeded:Z

.field private isCleanupRunning:Z

.field final synthetic this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)V
    .locals 1

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->check:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager;Lcom/sonymobile/rcs/addressbook/AddressBookManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager;
    .param p2, "x1"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;-><init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupNeeded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupNeeded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->check:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1685

    if-eq v1, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$200(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    :goto_1
    const/4 v0, 0x0

    .line 243
    .local v0, "scheduleCleanup":Z
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->check:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupRunning:Z

    if-nez v1, :cond_3

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->cleanupExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$300(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->cleanupExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$300(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;-><init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 232
    .end local v0    # "scheduleCleanup":Z
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$200(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Minimum check period elapsed, notify the listeners that a change occured in the address book"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    .restart local v0    # "scheduleCleanup":Z
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupNeeded:Z

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
