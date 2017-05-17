.class public abstract Lcom/sonymobile/jms/message/AbstractImUserMessage;
.super Ljava/lang/Object;
.source "AbstractImUserMessage.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessage;
.implements Lcom/sonymobile/jms/message/ImMessage;


# instance fields
.field private mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

.field private final mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

.field private mLocalTimestamp:J

.field private mMsgId:Ljava/lang/String;

.field private mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

.field private mSentTimestamp:J


# direct methods
.method constructor <init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V
    .locals 3
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "direction"    # Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .param p6, "contact"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p7, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mLocalTimestamp:J

    .line 27
    iput-wide p3, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mSentTimestamp:J

    .line 28
    iput-object p5, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    .line 29
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq p5, v0, :cond_0

    .line 33
    iput-object p6, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 34
    iput-object v1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 36
    :goto_0
    iput-object p7, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mMsgId:Ljava/lang/String;

    .line 37
    return-void

    .line 30
    :cond_0
    iput-object v1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 31
    iput-object p6, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

    goto :goto_0
.end method


# virtual methods
.method public getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method

.method public getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mLocalTimestamp:J

    return-wide v0
.end method

.method public getRecipient()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method

.method public getSentTimestamp()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mSentTimestamp:J

    return-wide v0
.end method

.method setAuthor(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    .locals 0
    .param p1, "author"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 49
    return-void
.end method

.method setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mMsgId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method setRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    .locals 0
    .param p1, "recipient"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 45
    return-void
.end method

.method updateTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mLocalTimestamp:J

    .line 53
    iput-wide p1, p0, Lcom/sonymobile/jms/message/AbstractImUserMessage;->mSentTimestamp:J

    .line 54
    return-void
.end method
