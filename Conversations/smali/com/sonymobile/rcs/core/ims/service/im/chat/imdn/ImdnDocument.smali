.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
.super Ljava/lang/Object;
.source "ImdnDocument.java"


# instance fields
.field private msgId:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->msgId:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->status:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->msgId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->status:Ljava/lang/String;

    .line 132
    return-void
.end method
