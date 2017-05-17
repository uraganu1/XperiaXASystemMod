.class public Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;
.super Ljava/lang/Object;
.source "ImFileMessageDeliveryInfo.java"


# instance fields
.field private final mDeliveryTimestamp:J

.field private final mDisplayTimestamp:J

.field private final mImFileMessageDeliveryStatus:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field private final mRecipientNumber:Lcom/sonymobile/jms/contact/ImContactNumber;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;JJ)V
    .locals 1
    .param p1, "recipientNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "imFileMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .param p3, "deliveryTimestamp"    # J
    .param p5, "displayTimestamp"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->mRecipientNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 23
    iput-object p2, p0, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->mImFileMessageDeliveryStatus:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .line 24
    iput-wide p3, p0, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->mDeliveryTimestamp:J

    .line 25
    iput-wide p5, p0, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->mDisplayTimestamp:J

    .line 26
    return-void
.end method


# virtual methods
.method public getImFileMessageDeliveryStatus()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->mImFileMessageDeliveryStatus:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v0
.end method

.method public getRecipientNumber()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->mRecipientNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method
