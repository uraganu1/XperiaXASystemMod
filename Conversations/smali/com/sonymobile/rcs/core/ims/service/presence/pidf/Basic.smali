.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;
.super Ljava/lang/Object;
.source "Basic.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->value:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->value:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->value:Ljava/lang/String;

    return-object v0
.end method
