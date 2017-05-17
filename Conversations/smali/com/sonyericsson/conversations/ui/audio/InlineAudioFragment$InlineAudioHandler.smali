.class Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$InlineAudioHandler;
.super Landroid/os/Handler;
.source "InlineAudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineAudioHandler"
.end annotation


# instance fields
.field mInlineAudioFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;

    .prologue
    .line 427
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 428
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$InlineAudioHandler;->mInlineAudioFragment:Ljava/lang/ref/WeakReference;

    .line 427
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$InlineAudioHandler;->mInlineAudioFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;

    .line 434
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;
    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    .line 435
    :cond_0
    return-void

    .line 437
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 452
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 432
    :cond_2
    :goto_0
    :pswitch_1
    return-void

    .line 441
    :pswitch_2
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-get2(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-get2(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->stopPlayback()V

    .line 443
    sget-object v1, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PAUSE_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    .line 445
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-get1(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-get0(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
