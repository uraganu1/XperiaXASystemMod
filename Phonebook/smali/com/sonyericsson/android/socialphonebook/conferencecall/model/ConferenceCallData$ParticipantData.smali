.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;
.super Ljava/lang/Object;
.source "ConferenceCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticipantData"
.end annotation


# instance fields
.field public contactName:Ljava/lang/String;

.field public contactUri:Landroid/net/Uri;

.field public phoneNumber:Ljava/lang/String;

.field public phoneNumberType:I

.field public photoId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
