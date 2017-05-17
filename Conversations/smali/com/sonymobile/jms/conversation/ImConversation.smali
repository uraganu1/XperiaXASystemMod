.class public Lcom/sonymobile/jms/conversation/ImConversation;
.super Ljava/lang/Object;
.source "ImConversation.java"


# instance fields
.field private final mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mImUserMessage:Lcom/sonymobile/jms/message/ImUserMessage;

.field private final mLocalTimestamp:J

.field private final mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "localTimestamp"    # J
    .param p4, "direction"    # Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "imUserMessage"    # Lcom/sonymobile/jms/message/ImUserMessage;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 26
    iput-wide p2, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mLocalTimestamp:J

    .line 27
    iput-object p4, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    .line 28
    iput-object p5, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mSubject:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mImUserMessage:Lcom/sonymobile/jms/message/ImUserMessage;

    .line 30
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0
.end method

.method public getId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mLocalTimestamp:J

    return-wide v0
.end method

.method public getMostRecentImUserMessage()Lcom/sonymobile/jms/message/ImUserMessage;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mImUserMessage:Lcom/sonymobile/jms/message/ImUserMessage;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversation;->mSubject:Ljava/lang/String;

    return-object v0
.end method
