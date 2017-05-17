.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GaCustomDimension"
.end annotation


# instance fields
.field public mKey:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;->mKey:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;->mValue:Ljava/lang/String;

    .line 63
    return-void
.end method
