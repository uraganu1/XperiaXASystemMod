.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->id:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->id:Ljava/lang/String;

    .line 37
    return-void
.end method
