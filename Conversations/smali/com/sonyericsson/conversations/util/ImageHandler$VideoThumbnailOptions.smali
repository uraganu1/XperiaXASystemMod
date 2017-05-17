.class Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoThumbnailOptions"
.end annotation


# instance fields
.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;->mVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;-><init>()V

    return-void
.end method
