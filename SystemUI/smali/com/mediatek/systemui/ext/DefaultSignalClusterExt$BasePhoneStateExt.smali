.class public Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;
.super Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;
.source "DefaultSignalClusterExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BasePhoneStateExt"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSignalClusterExt.PhoneStateExt"


# instance fields
.field protected mDataActivity:I

.field protected mDataConnectioned:Z

.field protected mDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field protected mHasSimService:Z

.field protected mIsSimAvailable:Z

.field protected mIsSimInserted:Z

.field protected mIsSimOffline:Z

.field protected mMobileDataActivity:Landroid/widget/ImageView;

.field protected mMobileDataActivityIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mMobileDataTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mMobileNetworkDataGroup:Landroid/widget/FrameLayout;

.field protected mMobileNetworkTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mMobileRoamingIndicator:Landroid/widget/ImageView;

.field protected mMobileSlotIndicator:Landroid/widget/ImageView;

.field protected mMobileSlotIndicatorIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mMobileStrengthIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mMobileStrengthNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mMobileStrengthOfflineIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

.field protected mNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field protected mRoaming:Z

.field protected mSignalStrengthLevel:I

.field final synthetic this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;


# direct methods
.method public constructor <init>(Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 382
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    .line 383
    invoke-direct {p0, p2, p3}, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;-><init>(II)V

    .line 365
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v1, v1, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkDataGroup:Landroid/widget/FrameLayout;

    .line 366
    iput-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivity:Landroid/widget/ImageView;

    .line 368
    iput-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    .line 369
    iput-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileSlotIndicator:Landroid/widget/ImageView;

    .line 372
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 373
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthOfflineIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 375
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 376
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 378
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 379
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivityIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 380
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileSlotIndicatorIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 382
    return-void
.end method


# virtual methods
.method public addToSignalGroup()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSignalClusterCombo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSignalClusterCombo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSignalClusterCombo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSignalClusterCombo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    :cond_1
    return-void
.end method

.method public apply()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 400
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apply(), State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-boolean v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mIsAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkDataGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 428
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileVisible:Z

    return v0

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->customizeIcons()V

    .line 410
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->applyMobileSignalStrength()V

    .line 413
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->applyMobileRoamingIndicator()V

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->applyMobileSlotIndicator()V

    .line 419
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->applyNetworkDataSwitch()V

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->applyNetworkDataType()V

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->applyMobileDataActivity()V

    goto :goto_0
.end method

.method protected applyMobileDataActivity()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 525
    iget-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataConnectioned:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->isNormalVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->isSignalStrengthNullIcon()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-boolean v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mShouldShowDataActivityIcon:Z

    if-eqz v0, :cond_2

    .line 532
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 533
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    const-string/jumbo v1, "applyMobileDataActivity(), mMobileDataActivity is VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivity:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 528
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    const-string/jumbo v1, "applyMobileDataActivity(), mMobileDataActivity is GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivity:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected applyMobileRoamingIndicator()V
    .locals 5

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 503
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 504
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyMobileRoamingIndicator(), mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const-string/jumbo v2, ", mSubId = "

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    iget v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const-string/jumbo v2, ", mRoaming = "

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    iget-boolean v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->isNormalVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->isSignalStrengthNullIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    :cond_2
    :goto_0
    return-void

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget v1, v1, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mWideTypeIconStartPadding:I

    .line 510
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    .line 511
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    .line 512
    iget-object v4, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 509
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 513
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected applyMobileSignalStrength()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method protected applyMobileSlotIndicator()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method protected applyNetworkDataSwitch()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 544
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 545
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyNetworkDataSwitch(), mDataConnectioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataConnectioned:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 549
    :cond_1
    return-void

    .line 552
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->isNormalVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->isSignalStrengthNullIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    :cond_3
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 554
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    const-string/jumbo v3, "applyNetworkDataSwitch(), No SIM inserted/Service or Signal Strength Null: Hide network type icon and data icon"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkDataGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :goto_0
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 586
    const-string/jumbo v3, "BaseSignalClusterExt.PhoneStateExt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyNetworkDataSwitch(), mMobileNetworkType isVisible: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 588
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 586
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    const-string/jumbo v4, ", mMobileDataType isVisible: "

    .line 586
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    iget-object v4, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 586
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5
    return-void

    .line 563
    :cond_6
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-boolean v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mWifiVisible:Z

    if-eqz v0, :cond_8

    .line 564
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 565
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    const-string/jumbo v3, "applyNetworkDataSwitch(), mWifiVisible = true, Show network type icon, Hide data type icon"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_7
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    :goto_3
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkDataGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataConnectioned:Z

    if-eqz v0, :cond_9

    .line 573
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-virtual {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getIconId()I

    move-result v0

    if-lez v0, :cond_9

    .line 574
    iget v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataTypeIcon:I

    if-lez v0, :cond_9

    .line 575
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    move v0, v2

    .line 588
    goto :goto_1

    :cond_b
    move v1, v2

    .line 590
    goto :goto_2
.end method

.method protected applyNetworkDataType()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method protected customizeIcons()V
    .locals 6

    .prologue
    .line 448
    sget-boolean v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 449
    const-string/jumbo v0, "BaseSignalClusterExt.PhoneStateExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customizeIcons(), mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthIcon:I

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->setIconId(I)V

    .line 453
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v1, v1, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    invoke-interface {v1}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 455
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSignalStrengthLevel:I

    iget-boolean v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    .line 456
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 455
    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeSignalStrengthIcon(IZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 458
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeSignalStrengthNullIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 459
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSlotId:I

    .line 460
    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthOfflineIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 459
    invoke-interface {v0, v1, v2}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeSignalStrengthOfflineIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 462
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget-boolean v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeDataTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/DataType;)V

    .line 463
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    invoke-interface {v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeBehaviorSet()Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    move-result-object v0

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP09_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    if-ne v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget-boolean v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    .line 465
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    iget-object v4, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v4, v4, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mNetworkControllerExt:Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;

    iget v5, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSubId:I

    invoke-interface {v4, v5}, Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;->getSvLteController(I)Lcom/mediatek/systemui/statusbar/extcb/SvLteController;

    move-result-object v4

    .line 464
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeDataNetworkTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/NetworkType;Lcom/mediatek/systemui/statusbar/extcb/SvLteController;)V

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivityIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataActivity:I

    invoke-interface {v0, v1, v2}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeDataActivityIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;I)V

    .line 471
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileSlotIndicatorIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeSignalIndicatorIcon(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 473
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->setImage(Landroid/widget/ImageView;Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 474
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->setImage(Landroid/widget/ImageView;Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileDataActivityIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->setImage(Landroid/widget/ImageView;Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileRoamingIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v1, v1, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mDefaultRoamingIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->setImage(Landroid/widget/ImageView;Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 477
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileSlotIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileSlotIndicatorIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-static {v0, v1}, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->setImage(Landroid/widget/ImageView;Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V

    .line 447
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mStatusBarPlugin:Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileNetworkTypeIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    iget-boolean v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mRoaming:Z

    .line 468
    iget-object v3, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 467
    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->customizeDataNetworkTypeIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;ZLcom/mediatek/systemui/statusbar/extcb/NetworkType;)V

    goto :goto_0
.end method

.method protected isNormalVisible()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-boolean v0, v0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mIsAirplaneMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimAvailable:Z

    goto :goto_0
.end method

.method protected isSignalStrengthNullIcon()Z
    .locals 3

    .prologue
    .line 481
    iget v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mMobileStrengthIcon:I

    iget-object v2, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->this$0:Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;

    iget-object v2, v2, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt;->mDefaultSignalNullIconId:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-virtual {v2}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getIconId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 483
    .local v0, "isNullIcon":Z
    :goto_0
    return v0

    .line 481
    .end local v0    # "isNullIcon":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isNullIcon":Z
    goto :goto_0
.end method

.method protected shouldShowOffline()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 437
    invoke-super {p0, p1}, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->toString(Ljava/lang/StringBuilder;)V

    .line 438
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, "mIsSimInserted="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    iget-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimInserted:Z

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    const-string/jumbo v1, "mHasSimService="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mHasSimService:Z

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    const-string/jumbo v1, "mIsSimOffline="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    iget-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mIsSimOffline:Z

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    const-string/jumbo v1, "mDataConnectioned="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    iget-boolean v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataConnectioned:Z

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    const-string/jumbo v1, "mNetworkType="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    const-string/jumbo v1, "mDataType="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/mediatek/systemui/ext/DefaultSignalClusterExt$BasePhoneStateExt;->mDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    return-void
.end method
