.class Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;
.super Landroid/os/AsyncTask;
.source "RcsContactCapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRcsContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;->this$0:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;
    .param p2, "x1"    # Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;-><init>(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;->this$0:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;->this$0:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 37
    return-object v0
.end method
