.class public Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
.super Ljava/lang/Object;
.source "MediaAttribute.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->value:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->value:Ljava/lang/String;

    return-object v0
.end method
