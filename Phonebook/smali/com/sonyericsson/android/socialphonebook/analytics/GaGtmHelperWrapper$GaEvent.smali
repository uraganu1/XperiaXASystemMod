.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GaEvent"
.end annotation


# instance fields
.field public mAction:Ljava/lang/String;

.field public mCategory:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;

.field public mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mKey:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mCategory:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mAction:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mLabel:Ljava/lang/String;

    .line 54
    iput-wide p5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mValue:J

    .line 49
    return-void
.end method
