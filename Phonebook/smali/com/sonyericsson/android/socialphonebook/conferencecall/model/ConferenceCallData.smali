.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;
.super Ljava/lang/Object;
.source "ConferenceCallData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
    }
.end annotation


# instance fields
.field private mDate:J

.field private mDuration:J

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mParticipants:Ljava/util/List;

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mDuration:J

    .line 24
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mDate:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mDuration:J

    return-wide v0
.end method

.method public getNumberOfParticipants()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mDate:J

    .line 49
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mDuration:J

    .line 29
    return-void
.end method

.method public setParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;->mParticipants:Ljava/util/List;

    .line 45
    return-void
.end method
