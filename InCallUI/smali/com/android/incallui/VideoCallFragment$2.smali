.class Lcom/android/incallui/VideoCallFragment$2;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallFragment;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$2;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$2;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$2;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->onVideoViewClick()V

    .line 1002
    :cond_0
    return-void
.end method
