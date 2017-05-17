.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->showFailureNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread$1;->this$1:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread$1;->this$1:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .line 312
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread$1;->this$1:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardReadThread;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    const v2, 0x7f090180

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 311
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method
