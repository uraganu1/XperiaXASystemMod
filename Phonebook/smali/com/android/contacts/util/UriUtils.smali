.class public Lcom/android/contacts/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri1"    # Landroid/net/Uri;
    .param p1, "uri2"    # Landroid/net/Uri;

    .prologue
    .line 36
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 40
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p0, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 55
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
