.class public abstract Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;
.super Ljava/lang/Object;
.source "DefaultSignalClusterExt.java"

# interfaces
.implements Lcom/mediatek/systemui/ext/ISignalClusterExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BaseSignalClusterExt"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDefaultRoamingIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mDefaultSignalNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mIsAirplaneMode:Z

.field protected mMobileSignalGroup:Landroid/widget/LinearLayout;

.field protected mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

.field protected mNoSimsView:Landroid/widget/ImageView;

.field protected mNoSimsVisible:Z

.field protected final mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

.field protected mSecondaryTelephonyPadding:I

.field protected mShouldShowDataActivityIcon:Z

.field protected mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

.field protected mSlotCount:I

.field protected mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

.field protected mWideTypeIconStartPadding:I

.field protected mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isUserLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    .line 31
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/systemui/ext/IStatusBarPlugin;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarPlugin"    # Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSlotCount:I

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mWifiVisible:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mIsAirplaneMode:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNoSimsVisible:Z

    .line 41
    iput v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mWideTypeIconStartPadding:I

    .line 42
    iput v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSecondaryTelephonyPadding:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mShouldShowDataActivityIcon:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mCurrentSubscriptions:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    .line 70
    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getSlotCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSlotCount:I

    .line 71
    iget v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSlotCount:I

    new-array v0, v0, [Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    .line 73
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mDefaultSignalNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 74
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mDefaultRoamingIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 76
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DefaultEmptyNetworkControllerExt;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/DefaultEmptyNetworkControllerExt;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    .line 66
    return-void
.end method

.method private getOrInflatePhoneState(ILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    .locals 9
    .param p1, "subId"    # I
    .param p2, "signalClusterCombo"    # Landroid/view/ViewGroup;
    .param p3, "mobileNetworkType"    # Landroid/widget/ImageView;
    .param p4, "mobileGroup"    # Landroid/view/ViewGroup;
    .param p5, "mobileStrength"    # Landroid/widget/ImageView;
    .param p6, "mobileType"    # Landroid/widget/ImageView;

    .prologue
    .line 156
    const/4 v8, 0x0

    .line 157
    .local v8, "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->getSlotId(I)I

    move-result v1

    .line 159
    .local v1, "slotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->getState(I)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v8

    .line 161
    .local v8, "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    if-nez v8, :cond_0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 162
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->inflatePhoneState(IILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v8

    .line 167
    .end local v1    # "slotId":I
    .end local v8    # "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    :cond_0
    return-object v8
.end method

.method private inflatePhoneState(IILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "subId"    # I
    .param p3, "signalClusterCombo"    # Landroid/view/ViewGroup;
    .param p4, "mobileNetworkType"    # Landroid/widget/ImageView;
    .param p5, "mobileGroup"    # Landroid/view/ViewGroup;
    .param p6, "mobileStrength"    # Landroid/widget/ImageView;
    .param p7, "mobileType"    # Landroid/widget/ImageView;

    .prologue
    .line 135
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->createPhoneState(IILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v1

    aput-object v1, v0, p1

    .line 139
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v0, "BaseSignalClusterExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inflatePhoneState(), slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, " state = "

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    aget-object v2, v2, p1

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    aget-object v0, v0, p1

    return-object v0

    .line 145
    :cond_1
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 146
    const-string/jumbo v0, "BaseSignalClusterExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inflatePhoneState(), slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "INVALID_SIM_SLOT_ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private inflatePhoneState(Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    .locals 8
    .param p1, "orgState"    # Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;

    .prologue
    .line 126
    iget v1, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSlotId:I

    iget v2, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSubId:I

    .line 127
    iget-object v3, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSignalClusterCombo:Landroid/view/ViewGroup;

    iget-object v4, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    .line 128
    iget-object v5, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileGroup:Landroid/view/ViewGroup;

    iget-object v6, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileStrength:Landroid/widget/ImageView;

    .line 129
    iget-object v7, p1, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    move-object v0, p0

    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->inflatePhoneState(IILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v0

    return-object v0
.end method

.method protected static final setImage(Landroid/widget/ImageView;Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    const/4 v1, 0x0

    .line 312
    if-eqz p0, :cond_0

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getIconId()I

    move-result v0

    if-nez v0, :cond_2

    .line 318
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getIconId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected static final toString(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 329
    const-string/jumbo v0, "null"

    return-object v0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;->isNoSimsVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNoSimsVisible:Z

    .line 232
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;->isWifiIndicatorsVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mWifiVisible:Z

    .line 233
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;->isAirplaneMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mIsAirplaneMode:Z

    .line 234
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;->getWideTypeIconStartPadding()I

    move-result v1

    iput v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mWideTypeIconStartPadding:I

    .line 235
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;->getSecondaryTelephonyPadding()I

    move-result v1

    iput v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSecondaryTelephonyPadding:I

    .line 237
    iget-object v4, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 238
    .local v0, "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    if-nez v0, :cond_1

    .line 239
    const-string/jumbo v1, "BaseSignalClusterExt"

    const-string/jumbo v6, "apply(), state == null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 244
    :cond_1
    iget v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSlotId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->isSimInsertedBySlot(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimInserted:Z

    .line 245
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->hasService(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mHasSimService:Z

    .line 246
    iget-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimInserted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mHasSimService:Z

    :goto_2
    iput-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimAvailable:Z

    .line 247
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->isOffline(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 248
    invoke-virtual {v0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->shouldShowOffline()Z

    move-result v1

    .line 247
    :goto_3
    iput-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimOffline:Z

    .line 249
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->isDataConnected(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataConnectioned:Z

    .line 251
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->isRoaming(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    .line 253
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getSignalStrengthLevel(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSignalStrengthLevel:I

    .line 254
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getDataType(I)Lcom/mediatek/systemui/statusbar/extcb/DataType;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 255
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getNetworkType(I)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 256
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getDataActivity(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataActivity:I

    .line 258
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    invoke-interface {v1}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    move-result-object v1

    sget-object v6, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP01_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    if-ne v1, v6, :cond_2

    .line 259
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getSvLteController(I)Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v6, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v1, v6}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getSvLteController(I)Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/systemui/statusbar/extcb/SvLteController;->isShowDataActivityIcon()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mShouldShowDataActivityIcon:Z

    .line 264
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->apply()Z

    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 246
    goto :goto_2

    .line 247
    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    .line 226
    .end local v0    # "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    :cond_5
    return-void
.end method

.method protected createDefaultPhoneState(I)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract createPhoneState(IILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
.end method

.method protected final getSlotId(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 284
    const/4 v0, -0x1

    .line 285
    .local v0, "slotId":I
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 286
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 287
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 291
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method protected getState(I)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 269
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSlotCount:I

    if-ge p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    aget-object v0, v0, p1

    return-object v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getSubId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 295
    const/4 v0, -0x1

    .line 296
    .local v0, "subId":I
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 297
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 298
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 302
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method protected isMultiSlot()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 336
    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSlotCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isSimInsertedBySlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isSimInsertedBySlot(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "mobileSignalGroup"    # Landroid/widget/LinearLayout;
    .param p2, "noSimsView"    # Landroid/widget/ImageView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 203
    iput-object p2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNoSimsView:Landroid/widget/ImageView;

    .line 205
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 206
    .local v0, "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->addToSignalGroup()V

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    iput-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 214
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 222
    return-void
.end method

.method public setMobileDataIndicators(IZLandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "mobileVisible"    # Z
    .param p3, "signalClusterCombo"    # Landroid/view/ViewGroup;
    .param p4, "mobileNetworkType"    # Landroid/widget/ImageView;
    .param p5, "mobileGroup"    # Landroid/view/ViewGroup;
    .param p6, "mobileStrength"    # Landroid/widget/ImageView;
    .param p7, "mobileType"    # Landroid/widget/ImageView;
    .param p8, "mobileStrengthIconId"    # I
    .param p9, "mobileDataTypeIconId"    # I
    .param p10, "mobileDescription"    # Ljava/lang/String;
    .param p11, "mobileTypeDescription"    # Ljava/lang/String;
    .param p12, "isMobileTypeIconWide"    # Z

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 177
    invoke-direct/range {v1 .. v7}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->getOrInflatePhoneState(ILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v8

    .line 180
    .local v8, "state":Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;
    if-eqz v8, :cond_2

    .line 181
    iput-boolean p2, v8, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileVisible:Z

    .line 182
    move/from16 v0, p8

    iput v0, v8, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileStrengthIcon:I

    .line 183
    move/from16 v0, p9

    iput v0, v8, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileDataTypeIcon:I

    .line 184
    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileDescription:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p11

    iput-object v0, v8, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileTypeDescription:Ljava/lang/String;

    .line 186
    move/from16 v0, p12

    iput-boolean v0, v8, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mIsMobileTypeIconWide:Z

    .line 195
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 196
    const-string/jumbo v1, "BaseSignalClusterExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMobileDataIndicators(), state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    return-void

    .line 188
    :cond_2
    if-eqz p3, :cond_0

    .line 189
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNetworkControllerExt(Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;)V
    .locals 2
    .param p1, "networkControllerExt"    # Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    .line 89
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mDefaultSignalNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getDefaultSignalNullIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mDefaultRoamingIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getDefaultRoamingIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setSignalClusterInfo(Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;)V
    .locals 0
    .param p1, "signalClusterInfo"    # Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSignalClusterInfo:Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;

    .line 80
    return-void
.end method

.method public setSubs(Ljava/util/List;[Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;)V
    .locals 5
    .param p2, "orgStates"    # [Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;[",
            "Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string/jumbo v2, "BaseSignalClusterExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSubs(), subs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", orgStates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mCurrentSubscriptions:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mSlotCount:I

    if-ge v0, v2, :cond_3

    .line 102
    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    .line 103
    sget-boolean v2, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 104
    const-string/jumbo v2, "BaseSignalClusterExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSubs(), inflatePhoneState orgStates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->inflatePhoneState(Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v3

    aput-object v3, v2, v0

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    sget-boolean v2, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 109
    const-string/jumbo v2, "BaseSignalClusterExt"

    const-string/jumbo v3, "setSubs(), createDefaultPhoneState IfNecessary"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    invoke-virtual {p0, v0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->createDefaultPhoneState(I)Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 118
    :cond_4
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mPhoneStates:[Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v1, v3, v2

    .line 119
    .local v1, "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->addToSignalGroup()V

    .line 118
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    .end local v1    # "state":Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
    :cond_6
    return-void
.end method
