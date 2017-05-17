.class public Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandonAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->checkContext(Landroid/content/Context;)V

    .line 56
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->checkListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 58
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 59
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 54
    return-void
.end method

.method private static checkContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    return-void
.end method

.method private static checkListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OnAudioFocusChangeListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    return-void
.end method

.method public static isAudioStreamedOnEarphone(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 75
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static requestAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->checkContext(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->checkListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 28
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 31
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x2

    .line 30
    invoke-virtual {v0, p1, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 33
    .local v1, "result":I
    if-ne v2, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
