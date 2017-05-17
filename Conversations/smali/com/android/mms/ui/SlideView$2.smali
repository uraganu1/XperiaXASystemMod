.class Lcom/android/mms/ui/SlideView$2;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 430
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    const/4 v1, 0x0

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    :pswitch_0
    return-void

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->-set3(Lcom/android/mms/ui/SlideView;Z)Z

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->-set3(Lcom/android/mms/ui/SlideView;Z)Z

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->pauseAudio()V

    goto :goto_0

    .line 445
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->-set3(Lcom/android/mms/ui/SlideView;Z)Z

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$2;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->startAudio()V

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
