.class public Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# instance fields
.field private contact:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->msgId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->contact:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->type:I

    .line 60
    iput-object p4, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->sessionId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->type:I

    return v0
.end method
