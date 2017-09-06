.class Lcom/android/incallui/VideoCallFragment$1;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 986
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get6(Lcom/android/incallui/VideoCallFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f0f00fe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 992
    .local v0, "displayVideo":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-wrap0(Lcom/android/incallui/VideoCallFragment;)V

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/incallui/VideoCallFragment;->-set0(Lcom/android/incallui/VideoCallFragment;Z)Z

    .line 988
    return-void
.end method
