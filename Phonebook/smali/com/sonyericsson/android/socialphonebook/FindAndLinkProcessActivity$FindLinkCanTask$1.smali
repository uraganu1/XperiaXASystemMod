.class Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$1;
.super Ljava/lang/Object;
.source "FindAndLinkProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->onPreExecute(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V
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
    .line 226
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 228
    const-string/jumbo v0, "LinkProcessActivity"

    const-string/jumbo v1, "Progress aborted"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->-get1(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;)I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->-set0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;I)I

    .line 227
    :cond_0
    return-void
.end method
