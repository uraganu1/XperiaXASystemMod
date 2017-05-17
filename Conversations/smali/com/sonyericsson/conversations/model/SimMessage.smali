.class public Lcom/sonyericsson/conversations/model/SimMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "SimMessage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/SimMessage;->mUri:Landroid/net/Uri;

    .line 13
    return-void
.end method


# virtual methods
.method public getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;-><init>()V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SimMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SimMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawPriority()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SimMessage;->mUri:Landroid/net/Uri;

    return-object v0
.end method
