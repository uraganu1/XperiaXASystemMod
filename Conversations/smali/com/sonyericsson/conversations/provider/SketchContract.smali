.class public Lcom/sonyericsson/conversations/provider/SketchContract;
.super Ljava/lang/Object;
.source "SketchContract.java"


# static fields
.field private static final BASE:Landroid/net/Uri;

.field public static final META:Landroid/net/Uri;

.field private static final META_COLS:[Ljava/lang/String;

.field public static final PACKAGES:Landroid/net/Uri;

.field private static final PACKAGES_COLS:[Ljava/lang/String;

.field private static final STICKERS_COLS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "com.sonymobile.sketch.provider.external.ContentProvider"

    .line 42
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->BASE:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->BASE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "packages"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->PACKAGES:Landroid/net/Uri;

    .line 52
    sget-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->BASE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "meta"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->META:Landroid/net/Uri;

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "package_id"

    aput-object v1, v0, v3

    .line 85
    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "icon_url"

    aput-object v1, v0, v5

    const-string/jumbo v1, "icon_small_url"

    aput-object v1, v0, v6

    .line 86
    const-string/jumbo v1, "type"

    aput-object v1, v0, v7

    const-string/jumbo v1, "order_index"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    sput-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->PACKAGES_COLS:[Ljava/lang/String;

    .line 94
    new-array v0, v7, [Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "package_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sticker_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "content_url"

    aput-object v1, v0, v5

    const-string/jumbo v1, "preview_url"

    aput-object v1, v0, v6

    .line 94
    sput-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->STICKERS_COLS:[Ljava/lang/String;

    .line 102
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "has_new_content"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->META_COLS:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static metaCols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->META_COLS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static packageCols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->PACKAGES_COLS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static stickersCols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sonyericsson/conversations/provider/SketchContract;->STICKERS_COLS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
