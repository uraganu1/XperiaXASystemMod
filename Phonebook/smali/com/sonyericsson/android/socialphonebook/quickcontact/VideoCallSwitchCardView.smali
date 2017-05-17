.class public Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;
.super Landroid/support/v7/widget/CardView;
.source "VideoCallSwitchCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$1;,
        Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mOnSwitchEntryClickListener:Landroid/view/View$OnClickListener;

.field private mSwitchView:Landroid/widget/Switch;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->values()[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$1;-><init>(Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;)V

    .line 104
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 123
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$2;-><init>(Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mOnSwitchEntryClickListener:Landroid/view/View$OnClickListener;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400e3

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "videoCallSwitchCardView":Landroid/view/View;
    const v2, 0x7f0e014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    .line 45
    const v2, 0x7f0e0230

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mTitleTextView:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0e0231

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    .line 47
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 40
    return-void
.end method


# virtual methods
.method public initialize(Z)V
    .locals 7
    .param p1, "isUsed"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "visibility":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getMyselfSettingsVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 60
    .local v0, "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v3}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVilteEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 62
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported enum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .restart local v0    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->setVisibility(I)V

    .line 55
    return-void

    .line 73
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mOnSwitchEntryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 82
    :pswitch_2
    const/16 v1, 0x8

    .line 86
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
