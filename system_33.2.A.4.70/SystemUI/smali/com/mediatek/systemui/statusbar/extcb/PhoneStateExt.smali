.class public Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;
.super Ljava/lang/Object;
.source "PhoneStateExt.java"


# instance fields
.field public mIsMobileTypeIconWide:Z

.field public mMobileDataTypeIcon:I

.field public mMobileDescription:Ljava/lang/String;

.field public mMobileGroup:Landroid/view/ViewGroup;

.field public mMobileNetworkType:Landroid/widget/ImageView;

.field public mMobileStrength:Landroid/widget/ImageView;

.field public mMobileStrengthIcon:I

.field public mMobileType:Landroid/widget/ImageView;

.field public mMobileTypeDescription:Ljava/lang/String;

.field public mMobileVisible:Z

.field public mSignalClusterCombo:Landroid/view/ViewGroup;

.field public final mSlotId:I

.field public final mSubId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileVisible:Z

    .line 17
    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileStrengthIcon:I

    .line 18
    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileDataTypeIcon:I

    .line 19
    iput-boolean v0, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mIsMobileTypeIconWide:Z

    .line 36
    iput p1, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSlotId:I

    .line 37
    iput p2, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSubId:I

    .line 35
    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected generateLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public setViews(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "signalClusterCombo"    # Landroid/view/ViewGroup;
    .param p2, "mobileNetworkType"    # Landroid/widget/ImageView;
    .param p3, "mobileGroup"    # Landroid/view/ViewGroup;
    .param p4, "mobileStrength"    # Landroid/widget/ImageView;
    .param p5, "mobileType"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSignalClusterCombo:Landroid/view/ViewGroup;

    .line 52
    iput-object p2, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileNetworkType:Landroid/widget/ImageView;

    .line 53
    iput-object p3, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileGroup:Landroid/view/ViewGroup;

    .line 54
    iput-object p4, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileStrength:Landroid/widget/ImageView;

    .line 55
    iput-object p5, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mMobileType:Landroid/widget/ImageView;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->toString(Ljava/lang/StringBuilder;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 81
    const-string/jumbo v0, "mSubId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/PhoneStateExt;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    return-void
.end method
