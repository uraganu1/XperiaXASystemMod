.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;
.super Ljava/lang/Object;
.source "Status.java"


# instance fields
.field private basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .line 30
    return-void
.end method


# virtual methods
.method public getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    return-object v0
.end method

.method public setBasic(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;)V
    .locals 0
    .param p1, "basic"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .line 38
    return-void
.end method
