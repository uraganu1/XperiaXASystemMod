.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
.super Ljava/lang/Object;
.source "CpimHeader.java"


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
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->value:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static parseHeader(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, ":"

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->value:Ljava/lang/String;

    return-object v0
.end method
