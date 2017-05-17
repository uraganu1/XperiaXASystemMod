.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;
.super Ljava/lang/Object;
.source "SendVcardActivity.java"

# interfaces
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    return-void
.end method


# virtual methods
.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    .line 532
    return-void
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public onExportCanceled(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 515
    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 521
    move-object v0, p2

    .line 522
    .local v0, "fError":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 520
    return-void
.end method

.method public onExportFinished(Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I
    .param p3, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "send_vcard_file"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->setResult(ILandroid/content/Intent;)V

    .line 544
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 540
    return-void
.end method

.method public onExportParsed(Lcom/android/contacts/common/vcard/ExportRequest;ILandroid/net/Uri;II)V
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v0

    if-eq p5, v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 509
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;I)I

    .line 503
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 499
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;

    .prologue
    .line 495
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;Z)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "isFromNfc"    # Z

    .prologue
    .line 491
    return-void
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/sonymobile/android/vcard/VCardEntry;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/sonymobile/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 487
    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 482
    return-void
.end method
