.class public final Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;
.super Ljava/lang/Object;
.source "RcsContactCapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$1;,
        Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;
    }
.end annotation


# instance fields
.field private mFetchRcsContactsTask:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

.field private mRcsContactsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addInRcsContactsCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mFetchRcsContactsTask:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;

    .line 87
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mFetchRcsContactsTask:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;->cancel(Z)Z

    .line 84
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mFetchRcsContactsTask:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;-><init>(Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$1;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mFetchRcsContactsTask:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

    .line 47
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mFetchRcsContactsTask:Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager$FetchRcsContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method public isRcsContact(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFromRcsContactsCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/RcsContactCapabilityManager;->mRcsContactsCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
