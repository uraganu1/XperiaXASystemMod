.class public Lcom/google/android/mms/util/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p0, :cond_1

    .line 78
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_0
    const-string/jumbo v1, ".fl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method
