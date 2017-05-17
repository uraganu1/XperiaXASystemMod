.class Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;
.super Ljava/lang/Object;
.source "AddressBookManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 255
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    const/4 v3, 0x1

    # setter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupRunning:Z
    invoke-static {v2, v3}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->access$402(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;Z)Z

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    # setter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupNeeded:Z
    invoke-static {v2, v4}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->access$502(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;Z)Z

    .line 262
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->cleanRCSEntries()V

    const/4 v0, 0x0

    .line 265
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    iget-object v2, v2, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->listeners:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$600(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->check:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->access$700(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupNeeded:Z
    invoke-static {v2}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->access$500(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    iget-object v2, v2, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->listeners:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$600(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;

    .line 268
    .local v1, "listener":Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;
    invoke-interface {v1}, Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;->handleAddressBookHasChanged()V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    .end local v1    # "listener":Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler$1;->this$1:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->isCleanupRunning:Z
    invoke-static {v2, v4}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->access$402(Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;Z)Z

    .line 273
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    return-void
.end method
