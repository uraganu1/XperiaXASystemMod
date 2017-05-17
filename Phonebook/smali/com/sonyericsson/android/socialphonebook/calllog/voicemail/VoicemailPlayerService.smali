.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
.super Landroid/app/Service;
.source "VoicemailPlayerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$1;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$3;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$4;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlackScreenController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReceiversRegistered:Z

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoicemailStatusListner:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Lcom/sonyericsson/android/socialphonebook/BlackScreenController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mBlackScreenController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mVoicemailStatusListner:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->disableSensors()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->play()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->setStatusValue(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mLocalBinder:Landroid/os/IBinder;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 268
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$3;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$4;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    return-void
.end method

.method private disableSensors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->abandonAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mBlackScreenController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->disableProximitySensor(Z)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mIsReceiversRegistered:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mIsReceiversRegistered:Z

    .line 208
    :cond_0
    return-void
.end method

.method private enableSensors()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mIsReceiversRegistered:Z

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->isAudioStreamedOnEarphone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mBlackScreenController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->enableProximitySensor()V

    .line 192
    :cond_0
    return-void
.end method

.method private play()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->requestAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->enableSensors()V

    .line 247
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->setStatusValue(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mVoicemailStatusListner:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailStarted()V

    goto :goto_0
.end method

.method private prepareMedia(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .prologue
    .line 220
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 221
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 222
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 223
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 226
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 227
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 232
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStatusValue(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .prologue
    .line 254
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->setPlayerStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->setPlayerStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->setPlayerStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getVoicemailMessageStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    return-object v0
.end method

.method public killService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->stopPlayback()V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mBlackScreenController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;->destroySelf()V

    .line 167
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 168
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->stopSelf()V

    .line 161
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 178
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->pausePlayback()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->play()V

    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->stopPlayback()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mBlackScreenController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController;

    .line 60
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$5;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->disableSensors()V

    .line 122
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 114
    return-void
.end method

.method public pausePlayback()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 145
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->disableSensors()V

    .line 146
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->setStatusValue(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mVoicemailStatusListner:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailPaused()V

    .line 142
    :cond_0
    return-void
.end method

.method public playPlayback(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V
    .locals 2
    .param p1, "voicemailStatus"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, "voicemailUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->prepareMedia(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 132
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->play()V

    goto :goto_0
.end method

.method public setVoicemailStatusChangeListener(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;)V
    .locals 0
    .param p1, "voicemailStatusListener"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mVoicemailStatusListner:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    .line 302
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->disableSensors()V

    .line 155
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->setStatusValue(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mVoicemailStatusListner:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailCompleted()V

    .line 157
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 151
    :cond_0
    return-void
.end method

.method public volumeDown()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 313
    const/4 v3, 0x1

    .line 312
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 311
    return-void
.end method

.method public volumeUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 306
    return-void
.end method
