.class public abstract Lcom/sonymobile/rcs/core/access/NetworkAccess;
.super Ljava/lang/Object;
.source "NetworkAccess.java"


# instance fields
.field protected ipAddress:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/NetworkAccess;->ipAddress:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/NetworkAccess;->type:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public abstract connect(Ljava/lang/String;)V
.end method

.method public abstract disconnect()V
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/NetworkAccess;->ipAddress:Ljava/lang/String;

    return-object v0
.end method
