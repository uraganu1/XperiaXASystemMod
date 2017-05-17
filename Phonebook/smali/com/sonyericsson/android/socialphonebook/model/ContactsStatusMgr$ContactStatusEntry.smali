.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
.super Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;
.source "ContactsStatusMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactStatusEntry"
.end annotation


# instance fields
.field private final mRawContactId:J

.field private final mStatus:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "aRawContactId"    # J
    .param p3, "aPackage"    # Ljava/lang/String;
    .param p4, "aIconId"    # Ljava/lang/String;
    .param p5, "aLabelId"    # Ljava/lang/String;
    .param p6, "aStatus"    # Ljava/lang/String;
    .param p7, "aTimestamp"    # J

    .prologue
    .line 477
    invoke-direct {p0, p3, p4, p5}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->mRawContactId:J

    .line 479
    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->mStatus:Ljava/lang/String;

    .line 480
    iput-wide p7, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->mTimestamp:J

    .line 476
    return-void
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->mRawContactId:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 492
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->mTimestamp:J

    return-wide v0
.end method
