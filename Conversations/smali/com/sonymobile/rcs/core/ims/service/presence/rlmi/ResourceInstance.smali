.class public Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;
.super Ljava/lang/Object;
.source "ResourceInstance.java"


# instance fields
.field private reason:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->state:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->reason:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->uri:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->reason:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->state:Ljava/lang/String;

    .line 47
    return-void
.end method
