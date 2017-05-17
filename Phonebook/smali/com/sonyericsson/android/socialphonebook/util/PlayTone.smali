.class public Lcom/sonyericsson/android/socialphonebook/util/PlayTone;
.super Ljava/lang/Object;
.source "PlayTone.java"


# static fields
.field private static final DIAL_TONE_STREAM_TYPE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PlayTone"

.field private static final TONE_LENGTH_MS:I = 0x64

.field private static final TONE_RELATIVE_VOLUME:I = 0x32

.field private static sDigitToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewIdToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e00ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e00f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e00f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e00fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e00f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e0103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e0107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e00ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e010f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e010b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e0119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    const v1, 0x7f0e0113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sDigitToneMap:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mToneGeneratorLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    .line 79
    return-void
.end method

.method private doPlayTone(I)V
    .locals 6
    .param p1, "tone"    # I

    .prologue
    const/4 v5, 0x1

    .line 161
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 167
    const-string/jumbo v4, "dtmf_tone"

    .line 166
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v1, 0x1

    .line 168
    .local v1, "mDTMFToneEnabled":Z
    :goto_0
    if-nez v1, :cond_3

    .line 169
    return-void

    .line 166
    .end local v1    # "mDTMFToneEnabled":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "mDTMFToneEnabled":Z
    goto :goto_0

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 173
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 174
    .local v2, "ringerMode":I
    if-eqz v2, :cond_4

    .line 175
    if-ne v2, v5, :cond_5

    .line 176
    :cond_4
    return-void

    .line 180
    :cond_5
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;-><init>(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;I)V

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->start()V

    .line 160
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->mActivity:Landroid/app/Activity;

    .line 83
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$2;-><init>(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)V

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$2;->start()V

    .line 113
    return-void
.end method

.method public play(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->sViewIdToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->doPlayTone(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)V

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->start()V

    .line 87
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;-><init>(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)V

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;->start()V

    .line 139
    return-void
.end method
