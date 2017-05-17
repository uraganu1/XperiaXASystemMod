.class public Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;
.super Ljava/lang/Object;
.source "VoiceMailMessageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

.field private mVoiceMailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mCurrentPosition:I

    .line 43
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mVoiceMailUri:Landroid/net/Uri;

    .line 41
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mCurrentPosition:I

    return v0
.end method

.method public getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mVoiceMailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mCurrentPosition:I

    .line 47
    return-void
.end method

.method public setPlayerStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->mPlayerStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .line 51
    return-void
.end method
