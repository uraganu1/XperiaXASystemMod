.class public Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private content:[B

.field private headers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->status:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->headers:Ljava/util/Hashtable;

    .line 42
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->content:[B

    .line 48
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->content:[B

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->headers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 5

    .prologue
    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->status:Ljava/lang/String;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 96
    .local v1, "index1":I
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->status:Ljava/lang/String;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "index2":I
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->status:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 99
    return v3
.end method

.method public isNotFoundResponse()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v0

    .local v0, "code":I
    const/16 v1, 0x194

    .line 124
    if-eq v0, v1, :cond_0

    .line 127
    const/4 v1, 0x0

    return v1

    .line 125
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isSuccessfullResponse()Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v0

    .local v0, "code":I
    const/16 v1, 0xc8

    .line 110
    if-ge v0, v1, :cond_1

    .line 113
    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/16 v1, 0x12c

    .line 110
    if-ge v0, v1, :cond_0

    .line 111
    const/4 v1, 0x1

    return v1
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->content:[B

    .line 147
    return-void
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->status:Ljava/lang/String;

    .line 57
    return-void
.end method
