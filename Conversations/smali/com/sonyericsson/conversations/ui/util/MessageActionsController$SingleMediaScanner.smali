.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleMediaScanner"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mListener:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mMs:Landroid/media/MediaScannerConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "f"    # Ljava/io/File;
    .param p3, "listener"    # Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .prologue
    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mFile:Ljava/io/File;

    .line 1202
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    .line 1203
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mListener:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 1204
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mContext:Landroid/content/Context;

    .line 1200
    return-void
.end method

.method private connectToMediaScannerConnection()V
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1220
    return-void
.end method

.method public static scan(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .prologue
    .line 1216
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 1217
    .local v0, "scanner":Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;
    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->connectToMediaScannerConnection()V

    .line 1215
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mListener:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mListener:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 1225
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1236
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1237
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mListener:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->mListener:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1233
    :cond_0
    return-void
.end method
