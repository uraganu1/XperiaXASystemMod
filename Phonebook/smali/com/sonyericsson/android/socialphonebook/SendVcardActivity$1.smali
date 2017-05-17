.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;
.super Ljava/lang/Object;
.source "SendVcardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->progressDialogShow(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    const-string/jumbo v2, "progressDialogShow:onCancel"

    const-string/jumbo v3, "start."

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/android/contacts/common/vcard/CancelRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)I

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/CancelRequest;-><init>(ILjava/lang/String;)V

    .line 232
    .local v0, "request":Lcom/android/contacts/common/vcard/CancelRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/android/contacts/common/vcard/VCardService;->handleCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->finish()V

    .line 228
    return-void
.end method
