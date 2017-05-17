.class Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;
.super Landroid/database/ContentObserver;
.source "AddressBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/addressbook/AddressBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsContractObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/addressbook/AddressBookManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    .line 194
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v1, 0x1685

    .line 199
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->checkHandler:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;
    invoke-static {v0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$100(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->checkHandler:Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;
    invoke-static {v0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$100(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/addressbook/AddressBookManager$CheckHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$200(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AddressBookManager$ContactsContractObserver;->this$0:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    # getter for: Lcom/sonymobile/rcs/addressbook/AddressBookManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->access$200(Lcom/sonymobile/rcs/addressbook/AddressBookManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "New address book checking scheduled in 1000 ms"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
