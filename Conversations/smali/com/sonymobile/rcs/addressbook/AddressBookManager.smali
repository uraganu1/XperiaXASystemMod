.class public Lcom/sonymobile/rcs/addressbook/AddressBookManager;
.super Ljava/lang/Object;
.source "AddressBookManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/addressbook/AddressBookManager$1;,
        Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;,
        Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;
    }
.end annotation


# instance fields
.field private checkHandler:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

.field private cleanupExecutor:Ljava/util/concurrent/ExecutorService;

.field private contactsContractCursor:Landroid/database/Cursor;

.field private contactsContractObserver:Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;

.field private contentResolver:Landroid/content/ContentResolver;

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private observerIsRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->listeners:Ljava/util/Vector;

    .line 75
    new-instance v0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;-><init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager;Lcom/sonymobile/rcs/addressbook/AddressBookManager$1;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->checkHandler:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    .line 90
    iput-boolean v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->observerIsRegistered:Z

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contentResolver:Landroid/content/ContentResolver;

    .line 110
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Address book manager is created"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->checkHandler:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->cleanupExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->listeners:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public addAddressBookListener(Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public removeAddressBookListener(Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public startAddressBookMonitoring()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->cleanupExecutor:Ljava/util/concurrent/ExecutorService;

    .line 123
    iget-boolean v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->observerIsRegistered:Z

    if-eqz v0, :cond_1

    .line 138
    :goto_1
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start address book monitoring"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;-><init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractObserver:Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;

    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractCursor:Landroid/database/Cursor;

    .line 131
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractObserver:Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->observerIsRegistered:Z

    goto :goto_1

    .line 132
    :cond_2
    return-void
.end method

.method public stopAddressBookMonitoring()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->checkHandler:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    const/16 v1, 0x1685

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->removeMessages(I)V

    .line 152
    iget-boolean v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->observerIsRegistered:Z

    if-nez v0, :cond_1

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->cleanupExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 161
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop address book monitoring"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractObserver:Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iput-boolean v2, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->observerIsRegistered:Z

    .line 156
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->contactsContractCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
