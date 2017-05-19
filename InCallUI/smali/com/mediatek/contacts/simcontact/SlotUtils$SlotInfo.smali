.class final Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SlotInfo"
.end annotation


# instance fields
.field mIccUri:Landroid/net/Uri;

.field mIccUsimUri:Landroid/net/Uri;

.field mIsSlotServiceRunning:Z

.field mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

.field mResId:I

.field mSdnUri:Landroid/net/Uri;

.field mSimPhoneBookServiceName:Ljava/lang/String;

.field mSlotId:I

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    .line 89
    iput p1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    .line 90
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateIccUri()V

    .line 91
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateIccUsimUri()V

    .line 92
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateSdnUri()V

    .line 93
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateSimPhoneBook()V

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->updateVoiceMailNumber()V

    .line 95
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateResId()V

    .line 96
    new-instance v0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-direct {v0, p1}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    .line 88
    return-void
.end method

.method private generateIccUri()V
    .locals 3

    .prologue
    .line 157
    const-string/jumbo v0, "content://icc/adn"

    .line 158
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIccUri:Landroid/net/Uri;

    .line 156
    return-void
.end method

.method private generateIccUsimUri()V
    .locals 3

    .prologue
    .line 166
    const-string/jumbo v0, "content://icc/pbr"

    .line 167
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIccUsimUri:Landroid/net/Uri;

    .line 165
    return-void
.end method

.method private generateResId()V
    .locals 3

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    packed-switch v0, :pswitch_data_0

    .line 117
    const-string/jumbo v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[generateResId]no res for slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const v0, 0x7f0b0008

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 108
    :pswitch_1
    const v0, 0x7f0b0009

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 111
    :pswitch_2
    const v0, 0x7f0b00ea

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 114
    :pswitch_3
    const v0, 0x7f0b00eb

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private generateSdnUri()V
    .locals 3

    .prologue
    .line 148
    const-string/jumbo v0, "content://icc/sdn"

    .line 149
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSdnUri:Landroid/net/Uri;

    .line 147
    return-void
.end method

.method private generateSimPhoneBook()V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "simphonebook"

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    .line 126
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    if-lez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public updateVoiceMailNumber()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    goto :goto_0
.end method
