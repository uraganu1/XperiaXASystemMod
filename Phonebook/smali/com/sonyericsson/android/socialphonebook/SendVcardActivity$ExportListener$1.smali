.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;
.super Ljava/lang/Object;
.source "SendVcardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;

.field final synthetic val$fError:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;
    .param p2, "val$fError"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;->this$1:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;->val$fError:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;->this$1:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener$1;->val$fError:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    return-void
.end method
