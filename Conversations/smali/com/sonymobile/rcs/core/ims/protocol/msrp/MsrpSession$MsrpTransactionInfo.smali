.class Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
.super Ljava/lang/Object;
.source "MsrpSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsrpTransactionInfo"
.end annotation


# instance fields
.field public cpimMsgId:Ljava/lang/String;

.field public msrpMsgId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

.field private timestamp:J

.field public transactionId:Ljava/lang/String;

.field public typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 2
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "msrpMsgId"    # Ljava/lang/String;
    .param p4, "cpimMsgId"    # Ljava/lang/String;
    .param p5, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->transactionId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->cpimMsgId:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->timestamp:J

    .line 86
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->transactionId:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->cpimMsgId:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->timestamp:J

    .line 91
    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->timestamp:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[MsrpTransactionInfo - "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "transactionId = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "msrpMsgId = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "cpimMsgId = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->cpimMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "typeMsrpChunk = "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "timestamp = "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "]"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
