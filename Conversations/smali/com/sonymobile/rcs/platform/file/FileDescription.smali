.class public Lcom/sonymobile/rcs/platform/file/FileDescription;
.super Ljava/lang/Object;
.source "FileDescription.java"


# instance fields
.field private directory:Z

.field private fileUri:Landroid/net/Uri;

.field private size:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcom/sonymobile/rcs/platform/file/FileDescription;->size:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/platform/file/FileDescription;->directory:Z

    .line 53
    iput-object p1, p0, Lcom/sonymobile/rcs/platform/file/FileDescription;->fileUri:Landroid/net/Uri;

    .line 54
    iput-wide p2, p0, Lcom/sonymobile/rcs/platform/file/FileDescription;->size:J

    .line 55
    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/sonymobile/rcs/platform/file/FileDescription;->size:J

    return-wide v0
.end method
