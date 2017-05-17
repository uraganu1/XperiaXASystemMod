.class Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "VCardService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/VCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMediaScannerConnectionClient"
.end annotation


# instance fields
.field final mConnection:Landroid/media/MediaScannerConnection;

.field final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    .line 81
    iput-object p2, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/android/contacts/common/vcard/VCardService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Connected to MediaScanner. Start scanning."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    invoke-static {}, Lcom/android/contacts/common/vcard/VCardService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scan completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 98
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->this$0:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v0, p0}, Lcom/android/contacts/common/vcard/VCardService;->-wrap0(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    .line 95
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 84
    return-void
.end method
