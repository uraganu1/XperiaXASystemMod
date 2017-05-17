.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;
    .param p2, "val$uris"    # [Landroid/net/Uri;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;-><init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set4(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Lcom/android/contacts/common/vcard/VCardImportExportListener;)Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->showDialog(I)V

    .line 703
    :cond_0
    return-void
.end method
