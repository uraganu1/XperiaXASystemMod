.class Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$2;
.super Ljava/lang/Object;
.source "FindAndLinkProcessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$2;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$2;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->-get0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)Landroid/content/Context;

    move-result-object v0

    .line 408
    const v1, 0x7f09028a

    .line 409
    const/4 v2, 0x1

    .line 406
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 405
    return-void
.end method
