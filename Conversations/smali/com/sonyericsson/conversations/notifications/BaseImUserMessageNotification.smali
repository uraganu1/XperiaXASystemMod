.class public abstract Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;
.super Ljava/lang/Object;
.source "BaseImUserMessageNotification.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessage;
.implements Lcom/sonyericsson/conversations/notifications/ImNotification;
.implements Lcom/sonymobile/jms/message/ImMessage;
.implements Ljava/io/Serializable;


# instance fields
.field private final mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

.field private final mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

.field private final mId:Ljava/lang/String;

.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mLocalTimestamp:J

.field private final mMimeType:Ljava/lang/String;

.field private final mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

.field private final mSentTimestamp:J

.field private final mWhenTimestamp:J


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V
    .locals 3
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 41
    iput-wide p3, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mWhenTimestamp:J

    .line 44
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mId:Ljava/lang/String;

    .line 45
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getLocalTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mLocalTimestamp:J

    .line 46
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getSentTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mSentTimestamp:J

    .line 47
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mMimeType:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    .line 49
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 50
    invoke-interface {p1}, Lcom/sonymobile/jms/message/ImUserMessage;->getRecipient()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 39
    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mAuthor:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method

.method public getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mDirection:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mLocalTimestamp:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mRecipient:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method

.method public getSentTimestamp()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mSentTimestamp:J

    return-wide v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;->mWhenTimestamp:J

    return-wide v0
.end method
