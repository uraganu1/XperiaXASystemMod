.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
.super Ljava/lang/Object;
.source "CpimMessage.java"


# instance fields
.field private contentHeaders:Ljava/util/Hashtable;
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

.field private msgContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 1
    .param p3, "msgContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "contentHeaders":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->msgContent:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->headers:Ljava/util/Hashtable;

    .line 118
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->contentHeaders:Ljava/util/Hashtable;

    .line 129
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->headers:Ljava/util/Hashtable;

    .line 130
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->contentHeaders:Ljava/util/Hashtable;

    .line 131
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->msgContent:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->contentHeaders:Ljava/util/Hashtable;

    const-string/jumbo v2, "Content-type"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 144
    return-object v0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->contentHeaders:Ljava/util/Hashtable;

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIMDNRoute()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "imdn.IMDN-Record-Route"

    .line 197
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDate()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "DateTime"

    .line 183
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 187
    return-object v2

    .line 185
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method
