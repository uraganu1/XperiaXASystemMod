.class public Lcom/android/contacts/common/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri1"    # Landroid/net/Uri;
    .param p1, "uri2"    # Landroid/net/Uri;

    .prologue
    .line 31
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x1

    return v0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 35
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
