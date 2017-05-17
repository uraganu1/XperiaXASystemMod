.class public Lcom/sonymobile/android/vcard/VCardUtils$TextUtilsPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUtilsPort"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableAscii(C)Z
    .locals 2

    .prologue
    const/16 v1, 0x7e

    const/16 v0, 0x20

    .line 113
    if-le v0, p0, :cond_2

    :cond_0
    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v0, v1

    .line 118
    :goto_0
    if-lt v0, v2, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAscii(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return v1
.end method
