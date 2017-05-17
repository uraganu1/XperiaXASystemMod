.class public Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
.super Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;
.source "HttpPutRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "PUT"

    .line 46
    return-object v0
.end method
