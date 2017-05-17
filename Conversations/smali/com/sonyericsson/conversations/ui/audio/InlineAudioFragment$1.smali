.class Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$1;
.super Ljava/lang/Object;
.source "InlineAudioFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-get3(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 413
    return-void
.end method
