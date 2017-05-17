.class public final Lcom/sonyericsson/android/socialphonebook/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static final VERSION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    .line 19
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Compatibility;->buildVersion(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildVersion(Ljava/lang/String;)V
    .locals 9
    .param p0, "vsn"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string/jumbo v6, "[.\\- ]"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "version":[Ljava/lang/String;
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 28
    :try_start_0
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/NumberFormatException;
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 34
    .local v3, "len":I
    move v4, v3

    .local v4, "off":I
    :goto_2
    if-ltz v4, :cond_0

    .line 35
    aget-object v6, v5, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 38
    .local v0, "c":C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-le v0, v6, :cond_2

    .line 39
    :cond_1
    if-eq v4, v3, :cond_0

    .line 40
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    aget-object v7, v5, v2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 22
    .end local v0    # "c":C
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "off":I
    :cond_3
    return-void
.end method

.method public static compare(I)I
    .locals 1
    .param p0, "sdkversion"    # I

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static compare([I)I
    .locals 5
    .param p0, "version"    # [I

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "ret":I
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v4, p0

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_1
    if-nez v2, :cond_1

    if-ge v1, v0, :cond_1

    .line 56
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v4, p0, v1

    sub-int v2, v3, v4

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "length":I
    .end local v1    # "off":I
    :cond_0
    array-length v0, p0

    .restart local v0    # "length":I
    goto :goto_0

    .line 59
    .restart local v1    # "off":I
    :cond_1
    if-nez v2, :cond_3

    .line 60
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 61
    :goto_2
    if-nez v2, :cond_3

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 62
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/Compatibility;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    :cond_2
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 65
    :goto_3
    if-nez v2, :cond_3

    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 66
    aget v3, p0, v1

    neg-int v2, v3

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 71
    :cond_3
    return v2
.end method

.method public static hasVanillaPickerFilter()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Compatibility;->compare(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 84
    const/4 v2, 0x4

    filled-new-array {v2, v0}, [I

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Compatibility;->compare([I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0
.end method
