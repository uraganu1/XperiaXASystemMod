.class Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;
.super Ljava/lang/Object;
.source "AdnContactsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContact"
.end annotation


# instance fields
.field private final mAccountType:Ljava/lang/String;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aRawContactId"    # J
    .param p3, "aAccountType"    # Ljava/lang/String;
    .param p4, "aAccountName"    # Ljava/lang/String;
    .param p5, "aSourceId"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->mAccountType:Ljava/lang/String;

    .line 350
    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->mSourceId:Ljava/lang/String;

    .line 348
    return-void
.end method
