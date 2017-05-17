.class Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask$1;
.super Ljava/lang/Object;
.source "FindAndLinkProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->onPreExecute(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 511
    const-string/jumbo v0, "LinkProcessActivity"

    const-string/jumbo v1, "Progress aborted"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->-get0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;)I

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->-set0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;I)I

    .line 510
    :cond_0
    return-void
.end method
