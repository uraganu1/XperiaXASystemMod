.class public Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;
.super Ljava/lang/Object;
.source "DependOnCapabilityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVoiceCapability:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;->mContext:Landroid/content/Context;

    .line 62
    sget-object v2, Lcom/android/settings/R$styleable;->DependOnCapability:[I

    .line 61
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "strVoiceCapability":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->fromName(Ljava/lang/String;)Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;->mVoiceCapability:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;->mVoiceCapability:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->isVoiceCapable(Landroid/content/Context;Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;)Z

    move-result v0

    return v0
.end method
