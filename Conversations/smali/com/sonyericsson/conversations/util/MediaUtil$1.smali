.class final Lcom/sonyericsson/conversations/util/MediaUtil$1;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/MediaUtil;->clearResizedImages(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deleteFileNameList:Ljava/util/ArrayList;

.field final synthetic val$draftMediaFileNameList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1608
    .local p1, "val$deleteFileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "val$draftMediaFileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/MediaUtil$1;->val$deleteFileNameList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sonyericsson/conversations/util/MediaUtil$1;->val$draftMediaFileNameList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1611
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MediaUtil$1;->val$deleteFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MediaUtil$1;->val$draftMediaFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
