.class final Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field numberLabel:Ljava/lang/String;

.field numberPresentation:I

.field numberType:I

.field protocol:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$CallerInfo;-><init>()V

    return-void
.end method
