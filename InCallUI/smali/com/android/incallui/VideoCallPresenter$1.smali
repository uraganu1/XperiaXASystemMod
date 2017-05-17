.class Lcom/android/incallui/VideoCallPresenter$1;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->-get0(Lcom/android/incallui/VideoCallPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v0, "Skipping scheduled fullscreen mode."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string/jumbo v0, "Automatically entering fullscreen mode."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->-set0(Lcom/android/incallui/VideoCallPresenter;Z)Z

    goto :goto_0
.end method
