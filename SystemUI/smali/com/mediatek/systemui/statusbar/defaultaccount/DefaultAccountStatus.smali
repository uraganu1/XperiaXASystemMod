.class public Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;
.super Ljava/lang/Object;
.source "DefaultAccountStatus.java"


# instance fields
.field private mAccountStatusIconId:I

.field private mDefSignalBackgroundIconId:I

.field private mSubId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->mSubId:I

    .line 23
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->getIconId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->mAccountStatusIconId:I

    .line 24
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const v0, 0x7f0201ac

    iput v0, p0, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->mDefSignalBackgroundIconId:I

    .line 21
    :cond_0
    return-void
.end method

.method private getIconId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "iconId":I
    packed-switch p1, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 41
    :pswitch_0
    const v0, 0x7f020172

    .line 42
    goto :goto_0

    .line 44
    :pswitch_1
    const v0, 0x7f020174

    .line 45
    goto :goto_0

    .line 47
    :pswitch_2
    const v0, 0x7f020173

    .line 48
    goto :goto_0

    .line 50
    :pswitch_3
    const v0, 0x7f020175

    .line 51
    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAccountStatusIconId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->mAccountStatusIconId:I

    return v0
.end method

.method public getDefSignalBackgroundIconId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->mDefSignalBackgroundIconId:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/systemui/statusbar/defaultaccount/DefaultAccountStatus;->mSubId:I

    return v0
.end method
