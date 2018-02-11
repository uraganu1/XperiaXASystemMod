.class final Lcom/mediatek/audioprofile/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-static {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->-get2(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-static {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->-get2(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->-get2(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->-set0(Lcom/mediatek/audioprofile/SeekBarVolumizer;I)I

    .line 471
    :cond_0
    return-void
.end method

.method public postUpdateSlider(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 481
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 480
    return-void
.end method
