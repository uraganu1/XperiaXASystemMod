.class public abstract Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private cookie:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->cookie:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    .line 60
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->url:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->content:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->contentType:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getAUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->url:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 156
    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .end local v1    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 158
    return-object v2
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    .local v0, "length":I
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->content:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->cookie:Ljava/lang/String;

    .line 146
    return-void
.end method
