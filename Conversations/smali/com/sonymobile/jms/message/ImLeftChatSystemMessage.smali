.class public Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;
.super Ljava/lang/Object;
.source "ImLeftChatSystemMessage.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImSystemMessage;
.implements Lcom/sonymobile/jms/message/ImMessage;


# instance fields
.field private final mImContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/contact/ImContactNumber;J)V
    .locals 0
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "timestamp"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->mImContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 18
    iput-wide p2, p0, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->mTimestamp:J

    .line 19
    return-void
.end method


# virtual methods
.method public getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->mImContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->mTimestamp:J

    return-wide v0
.end method
