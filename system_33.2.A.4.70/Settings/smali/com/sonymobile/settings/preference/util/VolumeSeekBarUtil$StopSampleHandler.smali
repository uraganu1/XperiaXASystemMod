.class final Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;
.super Landroid/os/Handler;
.source "VolumeSeekBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StopSampleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;->this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;-><init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;->this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-static {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->-get0(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
