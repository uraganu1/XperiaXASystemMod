.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpUtils;
.super Ljava/lang/Object;
.source "MsrpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChunkSize(Ljava/lang/String;)I
    .locals 9
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 34
    if-eqz p0, :cond_1

    const-string/jumbo v6, "-"

    .line 37
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "index1":I
    const-string/jumbo v6, "/"

    .line 38
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 39
    .local v4, "index2":I
    if-ne v3, v7, :cond_2

    .line 52
    :cond_0
    return v7

    .line 35
    .end local v3    # "index1":I
    .end local v4    # "index2":I
    :cond_1
    return v7

    .line 39
    .restart local v3    # "index1":I
    .restart local v4    # "index2":I
    :cond_2
    if-eq v4, v7, :cond_0

    const/4 v6, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 42
    .local v5, "lowByte":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "highByteString":Ljava/lang/String;
    const-string/jumbo v6, "*"

    .line 43
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 47
    .local v1, "highByte":I
    sub-int v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    return v6

    .line 44
    .end local v1    # "highByte":I
    :cond_3
    return v8

    .line 47
    .end local v2    # "highByteString":Ljava/lang/String;
    .end local v5    # "lowByte":I
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v7
.end method

.method public static getTotalSize(Ljava/lang/String;)I
    .locals 4
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 64
    if-eqz p0, :cond_0

    const-string/jumbo v2, "/"

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "index":I
    if-ne v1, v3, :cond_1

    .line 75
    return v3

    .line 65
    .end local v1    # "index":I
    :cond_0
    return v3

    .line 70
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v3
.end method
