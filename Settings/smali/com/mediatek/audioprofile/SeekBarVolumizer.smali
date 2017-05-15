.class public Lcom/mediatek/audioprofile/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$H;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private mKey:Ljava/lang/String;

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mOriginalStreamVolume:I

.field private mProfileIsActive:Z

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mReceiver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mSystemVolume:I

.field private final mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

.field private mVolumeBeforeMute:I

.field private final mVolumeObserver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;


# direct methods
.method static synthetic -get0(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/audioprofile/SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Lcom/mediatek/audioprofile/SeekBarVolumizer$H;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/audioprofile/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;
    .param p5, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$H;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    .line 57
    iput v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 58
    new-instance v1, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mReceiver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

    .line 61
    iput-boolean v4, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileIsActive:Z

    .line 65
    iput v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    .line 67
    iput v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 77
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 78
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    const-string/jumbo v1, "audioprofile"

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 82
    iput p2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    .line 83
    iput-object p5, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 86
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 87
    const-string/jumbo v1, "@M_AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " get Original SYSTEM Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 92
    const-string/jumbo v1, "@M_AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Profile keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " get Original Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileIsActive:Z

    .line 99
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v1, :cond_0

    .line 100
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-eq v1, v2, :cond_0

    .line 101
    const-string/jumbo v1, "@M_AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " original Volume to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 107
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AudioProfile_SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p4, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

    .line 113
    new-instance v1, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mVolumeObserver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;

    .line 114
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mVolumeObserver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;

    .line 114
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mReceiver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

    invoke-virtual {v1, v5}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 118
    if-nez p3, :cond_1

    .line 119
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_2

    .line 120
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p3

    .line 129
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 130
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    return-void

    .line 122
    :cond_2
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 123
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 126
    :cond_3
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSilentProfileActive()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 167
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 165
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_0

    .line 181
    const-string/jumbo v1, "AudioProfile_SeekBarVolumizer"

    const-string/jumbo v2, "Start sample."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

    invoke-interface {v1, p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;->onSampleStarting(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 201
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 175
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v4, v0

    .line 174
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 172
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVolume(IIZ)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "flag"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 391
    if-ne p1, v1, :cond_1

    .line 393
    if-eqz p3, :cond_0

    .line 394
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 390
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 401
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 406
    :cond_1
    if-eqz p3, :cond_2

    .line 407
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    const-string/jumbo v0, "AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->saveVolume()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 246
    if-nez p3, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->postSetVolume(I)V

    .line 245
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 261
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->postStartSample()V

    .line 265
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 255
    iput p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    .line 256
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 196
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method public ringtoneChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 446
    const-string/jumbo v1, "@M_AudioProfile_SeekBarVolumizer"

    const-string/jumbo v2, "Ringtone changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "newRingtoneUri":Landroid/net/Uri;
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v3, :cond_2

    .line 449
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    .line 450
    const/4 v3, 0x1

    .line 449
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 456
    .end local v0    # "newRingtoneUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 457
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 458
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 445
    :cond_1
    return-void

    .line 451
    .restart local v0    # "newRingtoneUri":Landroid/net/Uri;
    :cond_2
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 452
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .local v0, "newRingtoneUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public saveVolume()V
    .locals 4

    .prologue
    .line 419
    const-string/jumbo v0, "@M_AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Save Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 422
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    .line 424
    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x5

    .line 423
    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActiveProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const-string/jumbo v0, "@M_AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Active, save system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->setVolume(IIZ)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    const-string/jumbo v0, "@M_AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    const-string/jumbo v2, " not Active, Revert system Volume "

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 138
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    return-void

    .line 140
    :cond_1
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->postStopSample()V

    .line 283
    return-void
.end method
