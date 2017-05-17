.class Lcom/android/mms/ui/SlideView$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->-set1(Lcom/android/mms/ui/SlideView;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get2(Lcom/android/mms/ui/SlideView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get2(Lcom/android/mms/ui/SlideView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->-set4(Lcom/android/mms/ui/SlideView;I)I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get3(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->-set5(Lcom/android/mms/ui/SlideView;Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get0(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-wrap0(Lcom/android/mms/ui/SlideView;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get1(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->-set2(Lcom/android/mms/ui/SlideView;Z)Z

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get4(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get0(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-wrap1(Lcom/android/mms/ui/SlideView;)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v3}, Lcom/android/mms/ui/SlideView;->-set0(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->-set6(Lcom/android/mms/ui/SlideView;Z)Z

    .line 75
    :cond_4
    return-void
.end method
