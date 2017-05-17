.class public Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;
.super Ljava/lang/Object;
.source "ImTextMessageDeliveryInfo.java"


# instance fields
.field private final mDeliveryTimestamp:J

.field private final mDisplayTimestamp:J

.field private final mImTextMessageDeliveryStatus:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

.field private final mRecipientNumber:Lcom/sonymobile/jms/contact/ImContactNumber;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;JJ)V
    .locals 1
    .param p1, "recipientNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "imTextMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .param p3, "deliveryTimestamp"    # J
    .param p5, "displayTimestamp"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->mRecipientNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 23
    iput-object p2, p0, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->mImTextMessageDeliveryStatus:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    .line 24
    iput-wide p3, p0, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->mDeliveryTimestamp:J

    .line 25
    iput-wide p5, p0, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->mDisplayTimestamp:J

    .line 26
    return-void
.end method


# virtual methods
.method public getImTextMessageDeliveryStatus()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->mImTextMessageDeliveryStatus:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v0
.end method

.method public getRecipientNumber()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->mRecipientNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    return-object v0
.end method
