.class public Lcom/sonymobile/rcs/core/content/VideoContent;
.super Lcom/sonymobile/rcs/core/content/MmContent;
.source "VideoContent.java"


# instance fields
.field private height:I

.field private isLive:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    iput v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->height:I

    .line 46
    iput v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->width:I

    .line 48
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->isLive:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->height:I

    .line 46
    iput v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->width:I

    .line 48
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->isLive:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 41
    iput v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->height:I

    .line 46
    iput v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->width:I

    .line 48
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->isLive:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->width:I

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->isLive:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->height:I

    .line 116
    return-void
.end method

.method public setLive(Z)V
    .locals 0
    .param p1, "isLive"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->isLive:Z

    .line 56
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/sonymobile/rcs/core/content/VideoContent;->width:I

    .line 98
    return-void
.end method
