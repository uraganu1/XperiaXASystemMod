.class public Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;
.super Ljava/lang/Object;
.source "AudioLevelSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource$Listener;
    }
.end annotation


# instance fields
.field private volatile mListener:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource$Listener;

.field private volatile mSpeechLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArgument(Z)V
    .locals 1
    .param p0, "expression"    # Z

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method private maybeNotify()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->mListener:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource$Listener;

    .line 58
    .local v0, "l":Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource$Listener;
    if-eqz v0, :cond_0

    .line 59
    iget v1, p0, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->mSpeechLevel:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource$Listener;->onSpeechLevel(I)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpeechLevel()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->mSpeechLevel:I

    return v0
.end method

.method public setSpeechLevel(I)V
    .locals 3
    .param p1, "speechLevel"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-ltz p1, :cond_1

    const/16 v2, 0x64

    if-gt p1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->checkArgument(Z)V

    .line 40
    iput p1, p0, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->mSpeechLevel:I

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->maybeNotify()V

    .line 37
    return-void

    .line 39
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
