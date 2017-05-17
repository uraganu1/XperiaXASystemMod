.class Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    sget-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 202
    const-string/jumbo v0, "onClick:BackwardButton"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->-get3(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->-get3(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->backSlide()V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->-get0(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 200
    :cond_1
    return-void
.end method
