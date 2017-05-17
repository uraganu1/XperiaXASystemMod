.class public Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;
.super Ljava/lang/Object;
.source "RlmiDocument.java"


# instance fields
.field private resourceList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->uri:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->resourceList:Ljava/util/Vector;

    .line 34
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->uri:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public addResource(Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;)V
    .locals 1
    .param p1, "res"    # Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->resourceList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public getResourceList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->resourceList:Ljava/util/Vector;

    return-object v0
.end method
