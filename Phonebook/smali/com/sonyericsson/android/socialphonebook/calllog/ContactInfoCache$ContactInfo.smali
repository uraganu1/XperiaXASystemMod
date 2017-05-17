.class public final Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfo"
.end annotation


# instance fields
.field public dataId:J

.field public formattedNumber:Ljava/lang/String;

.field private hasCnapData:Z

.field public hasContactData:Z

.field private isSyncedWithDb:Z

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public personId:J

.field public protocol:Ljava/lang/String;

.field public type:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasCnapData:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->isSyncedWithDb:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->hasCnapData:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->isSyncedWithDb:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const-string/jumbo v0, "tel:"

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->protocol:Ljava/lang/String;

    .line 574
    return-void
.end method
