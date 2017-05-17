.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageMediaScanner"
.end annotation


# instance fields
.field private mConn:Landroid/media/MediaScannerConnection;

.field private mFilename:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    const/4 v0, 0x0

    .line 629
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mFilename:Ljava/lang/String;

    .line 631
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    .line 632
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mIntent:Landroid/content/Intent;

    .line 629
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mFilename:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 643
    if-eqz p2, :cond_1

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get4(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap7(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Intent;)V

    .line 640
    :cond_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get5(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get4(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setConnection(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .param p1, "conn"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mConn:Landroid/media/MediaScannerConnection;

    .line 661
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mFilename:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->mIntent:Landroid/content/Intent;

    .line 657
    return-void
.end method
