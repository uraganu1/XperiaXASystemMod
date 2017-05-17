.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$4;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcsRequestHandled(IZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 293
    if-nez p2, :cond_0

    .line 294
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Not able to refresh RCS capabilities for contacts!"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 292
    return-void
.end method
