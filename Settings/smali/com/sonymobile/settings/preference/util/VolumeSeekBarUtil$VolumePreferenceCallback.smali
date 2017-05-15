.class final Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "VolumeSeekBarUtil.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;-><init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 102
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-static {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->-get1(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->this$0:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;

    invoke-static {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->-get1(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 109
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 113
    :cond_0
    return-void
.end method
