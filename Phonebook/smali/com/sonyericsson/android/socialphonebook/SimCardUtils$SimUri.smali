.class public Lcom/sonyericsson/android/socialphonebook/SimCardUtils$SimUri;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimUri"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "icc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimSdnUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "subId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotSdnUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSimUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "subId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotIccUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
