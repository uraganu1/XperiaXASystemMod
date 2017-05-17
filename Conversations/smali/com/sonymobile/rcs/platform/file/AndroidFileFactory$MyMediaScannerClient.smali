.class Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "AndroidFileFactory.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private filename:Ljava/lang/String;

.field private scanner:Landroid/media/MediaScannerConnection;

.field final synthetic this$0:Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;Ljava/lang/String;)V
    .locals 2
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->this$0:Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->filename:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->scanner:Landroid/media/MediaScannerConnection;

    .line 170
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->this$0:Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;

    # getter for: Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->access$000(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->scanner:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->filename:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->this$0:Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;

    # getter for: Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->access$000(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scanning file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->this$0:Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;

    # getter for: Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->access$000(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :goto_1
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->this$0:Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;

    # getter for: Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->access$000(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scan completed for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->scanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    goto :goto_1
.end method

.method public scan()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->scanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 190
    return-void
.end method
