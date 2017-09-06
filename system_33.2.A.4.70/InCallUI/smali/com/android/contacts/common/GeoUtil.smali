.class public Lcom/android/contacts/common/GeoUtil;
.super Ljava/lang/Object;
.source "GeoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/contacts/common/location/CountryDetector;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/location/CountryDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/location/CountryDetector;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
