.class final Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SlotInfo"
.end annotation


# static fields
.field private static final ICC_ADN_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/adn"

.field private static final ICC_PBR_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/pbr"

.field private static final ICC_SDN_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/sdn"

.field private static final SIM_PHONE_BOOK_SERVICE_NAME_FOR_SINGLE_SLOT:Ljava/lang/String; = "simphonebook"


# instance fields
.field mIccUri:Landroid/net/Uri;

.field mIccUsimUri:Landroid/net/Uri;

.field mIsSlotServiceRunning:Z

.field mPhbInfo:Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

.field mSdnUri:Landroid/net/Uri;

.field mSimPhoneBookServiceName:Ljava/lang/String;

.field mSlotId:I

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    .line 67
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->generateIccUri()V

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->generateIccUsimUri()V

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->generateSdnUri()V

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->generateSimPhoneBook()V

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->updateVoiceMailNumber()V

    .line 73
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mPhbInfo:Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;

    .line 66
    return-void
.end method

.method private generateIccUri()V
    .locals 3

    .prologue
    .line 112
    const-string/jumbo v0, "content://icc/adn"

    .line 113
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIccUri:Landroid/net/Uri;

    .line 111
    return-void
.end method

.method private generateIccUsimUri()V
    .locals 3

    .prologue
    .line 121
    const-string/jumbo v0, "content://icc/pbr"

    .line 122
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIccUsimUri:Landroid/net/Uri;

    .line 120
    return-void
.end method

.method private generateSdnUri()V
    .locals 3

    .prologue
    .line 103
    const-string/jumbo v0, "content://icc/sdn"

    .line 104
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSdnUri:Landroid/net/Uri;

    .line 102
    return-void
.end method

.method private generateSimPhoneBook()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "simphonebook"

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    .line 81
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    if-lez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public getIccUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isSimUsimType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIccUsimUri:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIccUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getSdnUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSdnUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSimPhoneBookServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSimServiceRunning()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    return v0
.end method

.method public updateSimServiceRunningState(Z)V
    .locals 3
    .param p1, "isRunning"    # Z

    .prologue
    .line 130
    const-string/jumbo v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[updateSimServiceRunningState]slotid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string/jumbo v2, ",service running state changed from "

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string/jumbo v2, " to "

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    .line 129
    return-void
.end method

.method public updateVoiceMailNumber()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    goto :goto_0
.end method
