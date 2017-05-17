.class public Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;
.super Ljava/lang/Object;
.source "SubInfoUtils.java"


# static fields
.field public static final ICC_PROVIDER_ADN_URI:Ljava/lang/String; = "content://icc/adn/subId"

.field public static final ICC_PROVIDER_PBR_URI:Ljava/lang/String; = "content://icc/pbr/subId"

.field public static final ICC_PROVIDER_SDN_URI:Ljava/lang/String; = "content://icc/sdn/subId"

.field public static final PHONE_BOOK_SERVICE_NAME:Ljava/lang/String; = "simphonebook"

.field private static final TAG:Ljava/lang/String; = "SubInfoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSubscriber(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v0, 0x1

    .line 42
    if-ge p0, v0, :cond_0

    .line 43
    const-string/jumbo v0, "SubInfoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Warning, invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    return v0
.end method

.method public static getIccProviderSdnUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 35
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->checkSubscriber(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string/jumbo v0, "content://icc/sdn/subId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getIccProviderUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 23
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 24
    .local v0, "subId":I
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->checkSubscriber(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    const/4 v1, 0x0

    return-object v1

    .line 27
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isSimUsimType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string/jumbo v1, "content://icc/pbr/subId"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 30
    :cond_1
    const-string/jumbo v1, "content://icc/adn/subId"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getInvalidSlotId()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x1

    return v0
.end method

.method public static getInvalidSubId()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method public static getPhoneBookServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "simphonebook"

    return-object v0
.end method
