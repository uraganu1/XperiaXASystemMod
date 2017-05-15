.class public Lcom/mediatek/audioprofile/Editprofile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Editprofile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;,
        Lcom/mediatek/audioprofile/Editprofile$H;,
        Lcom/mediatek/audioprofile/Editprofile$1;
    }
.end annotation


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContext:Landroid/content/Context;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/TwoStatePreference;

.field private final mHandler:Lcom/mediatek/audioprofile/Editprofile$H;

.field private mHapticFeedback:Landroid/preference/TwoStatePreference;

.field private mIsMeetingMode:Z

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/TwoStatePreference;

.field private mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mSIMSelectorTitle:Ljava/lang/String;

.field private mSelectRingtongType:I

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSimId:J

.field private mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mSoundEffects:Landroid/preference/TwoStatePreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/TwoStatePreference;

.field private mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mVoiceCapable:Z

.field private mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field public mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

.field private final mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;


# direct methods
.method static synthetic -get0(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$H;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHandler:Lcom/mediatek/audioprofile/Editprofile$H;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/audioprofile/Editprofile;ZLjava/lang/String;)V
    .locals 0
    .param p1, "isChecked"    # Z
    .param p2, "preferenceType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceChangeToDatabase(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;-><init>(Lcom/mediatek/audioprofile/Editprofile;Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    .line 109
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$H;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/Editprofile$H;-><init>(Lcom/mediatek/audioprofile/Editprofile;Lcom/mediatek/audioprofile/Editprofile$H;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHandler:Lcom/mediatek/audioprofile/Editprofile$H;

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    .line 142
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/Editprofile$1;-><init>(Lcom/mediatek/audioprofile/Editprofile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 76
    return-void
.end method

.method private initNoVoiceCapablePref(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 353
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    return-void
.end method

.method private initNotification(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 284
    const-string/jumbo v0, "notifications_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 285
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string/jumbo v1, "NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 289
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setNoNeedSIMSelector(Z)V

    .line 283
    :cond_0
    return-void
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 245
    .local v0, "parent":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initVolume(Landroid/preference/PreferenceScreen;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initRingtoneAndNotification(Landroid/preference/PreferenceScreen;)V

    .line 247
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initSystemAudio()V

    .line 250
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->removePrefWhenSilentOrMeeting(Landroid/preference/PreferenceScreen;)V

    .line 252
    return-void

    .line 259
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceCapable:Z

    if-eqz v1, :cond_2

    .line 260
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initVoiceCapablePref(Landroid/preference/PreferenceScreen;)V

    .line 242
    :goto_0
    return-void

    .line 262
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initNoVoiceCapablePref(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private initRingtone(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 294
    const-string/jumbo v0, "phone_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 295
    const-string/jumbo v0, "video_call_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 296
    const-string/jumbo v0, "sip_call_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 293
    return-void
.end method

.method private initRingtoneAndNotification(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->initNotification(Landroid/preference/PreferenceScreen;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->initRingtone(Landroid/preference/PreferenceScreen;)V

    .line 278
    return-void
.end method

.method private initSystemAudio()V
    .locals 2

    .prologue
    .line 300
    const-string/jumbo v0, "phone_vibrate"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    .line 301
    const-string/jumbo v0, "audible_touch_tones"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    .line 302
    const-string/jumbo v0, "audible_selection"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    .line 303
    const-string/jumbo v0, "screen_lock_sounds"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    .line 304
    const-string/jumbo v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/TwoStatePreference;

    .line 305
    const-string/jumbo v0, "phone_vibrate"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 306
    const-string/jumbo v0, "audible_touch_tones"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 307
    const-string/jumbo v0, "audible_selection"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 308
    const-string/jumbo v0, "screen_lock_sounds"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 309
    const-string/jumbo v0, "haptic_feedback"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 299
    return-void
.end method

.method private initVoiceCapablePref(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x1

    .line 324
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const v1, 0x7f0b0a7c

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setTitle(I)V

    .line 327
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 331
    const-string/jumbo v1, "RING"

    .line 330
    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 335
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setNoNeedSIMSelector(Z)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 342
    const-string/jumbo v1, "RING"

    .line 341
    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 345
    const/16 v1, 0x8

    .line 344
    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 346
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setNoNeedSIMSelector(Z)V

    .line 323
    :cond_1
    return-void
.end method

.method private initVolume(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 267
    const-string/jumbo v0, "alarm_volume"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 268
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "ring_volume"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 270
    const-string/jumbo v0, "notification_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string/jumbo v0, "notification_volume"

    .line 273
    const/4 v1, 0x5

    .line 272
    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 274
    const-string/jumbo v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I

    .prologue
    .line 412
    const-string/jumbo v1, "@M_AudioProfile/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init volume preference, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",stream = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 414
    .local v0, "volumePref":Lcom/mediatek/audioprofile/VolumeSeekBarPreference;
    invoke-virtual {v0, p2}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->setStream(I)V

    .line 415
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->setCallback(Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;)V

    .line 416
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->setProfile(Ljava/lang/String;)V

    .line 418
    return-object v0
.end method

.method private isSmsCapable()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePrefWhenSilentOrMeeting(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 312
    return-void
.end method

.method private setPreferenceChangeToDatabase(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isChecked"    # Z
    .param p2, "preferenceType"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Preference type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string/jumbo v0, "phone_vibrate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string/jumbo v0, "audible_touch_tones"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 499
    :cond_2
    const-string/jumbo v0, "audible_selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 501
    :cond_3
    const-string/jumbo v0, "screen_lock_sounds"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 502
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 503
    :cond_4
    const-string/jumbo v0, "haptic_feedback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrateOnTouchEnabled(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preferenceType"    # Ljava/lang/String;
    .param p2, "p"    # Landroid/preference/Preference;

    .prologue
    .line 483
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/audioprofile/Editprofile$3;-><init>(Lcom/mediatek/audioprofile/Editprofile;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    return-void
.end method

.method private setRingtoneSIMId(J)V
    .locals 1
    .param p1, "simId"    # J

    .prologue
    .line 577
    iget v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    return-void

    .line 579
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 583
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 584
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtoneType(I)V
    .locals 2
    .param p1, "keyIndex"    # I

    .prologue
    .line 526
    packed-switch p1, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtongTypeAndStartSIMSelector(I)V
    .locals 5
    .param p1, "keyIndex"    # I

    .prologue
    .line 509
    const-string/jumbo v2, "@M_AudioProfile/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected ringtone type index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 514
    .local v0, "numSlots":I
    move v1, v0

    .line 515
    .local v1, "simNum":I
    const-string/jumbo v2, "@M_AudioProfile/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simList.size() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 518
    iput p1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    .line 519
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtoneType(I)V

    .line 520
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->startSIMCardSelectorActivity()V

    .line 508
    .end local v0    # "numSlots":I
    .end local v1    # "simNum":I
    :cond_0
    return-void
.end method

.method private startSIMCardSelectorActivity()V
    .locals 2

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings.sim.SELECT_SUB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 538
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 370
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 372
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isLockScreenEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 373
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isVibrateOnTouchEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 368
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 623
    const v0, 0x186a4

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 563
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 564
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 565
    const-string/jumbo v2, "resultCode"

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-nez p1, :cond_1

    .line 567
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 568
    const-string/jumbo v0, "subscription"

    .line 569
    const-wide/16 v2, -0x1

    .line 568
    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 570
    iget-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtoneSIMId(J)V

    .line 572
    :cond_0
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Select SIM id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 552
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    const-string/jumbo v2, ",mCurOrientation = "

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    iget v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    const-string/jumbo v2, ",this = "

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 555
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 556
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 551
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    .line 161
    const v3, 0x7f080028

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/Editprofile;->addPreferencesFromResource(I)V

    .line 162
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 163
    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceCapable:Z

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 166
    .local v1, "parentActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "@M_AudioProfile/EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",bundle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    const-string/jumbo v5, ",this = "

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string/jumbo v3, "profileKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    .line 173
    const-string/jumbo v3, "audioprofile"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 174
    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 176
    .local v2, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    .line 177
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b022b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mSIMSelectorTitle:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initPreference()V

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 221
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->stopSample()V

    .line 223
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 228
    iput-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 219
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 472
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phone_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    .line 479
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 475
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video_call_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 382
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->updatePreference()V

    .line 383
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$2;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/Editprofile$2;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    .line 404
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 201
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "ringtone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 201
    invoke-virtual {v0, v1, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 208
    const-string/jumbo v3, "(name=?)"

    .line 209
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    move-object v5, v2

    .line 206
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 210
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 211
    const-string/jumbo v3, "name"

    .line 210
    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 236
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 234
    return-void
.end method
