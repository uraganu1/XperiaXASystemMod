.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/ui/SlideshowPresenter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    .line 78
    .local v0, "layout":Lcom/android/mms/model/LayoutModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->-wrap1(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->-wrap0(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 80
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ratio_w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v2, v2, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ratio_h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v2, v2, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method