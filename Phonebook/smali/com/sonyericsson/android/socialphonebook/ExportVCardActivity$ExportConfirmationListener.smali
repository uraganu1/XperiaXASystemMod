.class Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportConfirmationListener"
.end annotation


# instance fields
.field private mDestinationUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Landroid/net/Uri;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 81
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "Try sending export request (uri: %s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->mDestinationUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 85
    .local v0, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    .line 86
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    .line 85
    invoke-direct {v2, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    .line 88
    .end local v0    # "request":Lcom/android/contacts/common/vcard/ExportRequest;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)V

    .line 79
    return-void
.end method
