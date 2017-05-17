.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContact"
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mRawContactId:J


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->mRawContactId:J

    return-wide v0
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aRawContactId"    # J
    .param p3, "aAccountType"    # Ljava/lang/String;
    .param p4, "aAccountName"    # Ljava/lang/String;
    .param p5, "aSourceId"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->mRawContactId:J

    .line 105
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->mAccountType:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->mAccountName:Ljava/lang/String;

    .line 107
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "ContactsStatusMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rawcontact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "/"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
