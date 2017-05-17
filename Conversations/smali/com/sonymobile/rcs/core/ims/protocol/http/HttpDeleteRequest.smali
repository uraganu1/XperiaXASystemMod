.class public Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
.super Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;
.source "HttpDeleteRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "DELETE"

    .line 43
    return-object v0
.end method
