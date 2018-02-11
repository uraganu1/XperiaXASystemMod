.class public Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;
.super Ljava/lang/Object;
.source "VolumeSeekBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;,
        Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;,
        Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

.field private final mContext:Landroid/content/Context;

.field private final mDependOnCapabilityUtil:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;

.field private final mHandler:Landroid/os/Handler;

.field private final mKey:Ljava/lang/String;

.field private final mPreference:Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mCallback:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sonymobile/settings/preference/VolumeSeekBarPreference;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "preference"    # Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v4, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

    invoke-direct {v4, p0, v5}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;-><init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;)V

    iput-object v4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mCallback:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

    .line 47
    new-instance v4, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;

    invoke-direct {v4, p0, v5}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;-><init>(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$StopSampleHandler;)V

    iput-object v4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mContext:Landroid/content/Context;

    .line 60
    iput-object p4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mPreference:Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;

    .line 61
    iput-object v5, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mKey:Ljava/lang/String;

    .line 63
    new-instance v4, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;

    invoke-direct {v4, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mDependOnCapabilityUtil:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;

    .line 66
    sget-object v4, Lcom/android/settings/R$styleable;->VolumeSeekBarPreference:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "strStream":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    move-result-object v3

    .line 71
    .local v3, "stream":Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;
    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mPreference:Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;

    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mCallback:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

    invoke-virtual {v4, v5}, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 72
    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mPreference:Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;

    invoke-static {v3}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->-get0(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->setStream(I)V

    .line 74
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 75
    .local v1, "muteIcon":I
    if-eq v1, v6, :cond_0

    .line 76
    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mPreference:Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;

    invoke-virtual {v4, v1}, Lcom/sonymobile/settings/preference/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mDependOnCapabilityUtil:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;->mCallback:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$VolumePreferenceCallback;->stopSample()V

    .line 89
    return-void
.end method
