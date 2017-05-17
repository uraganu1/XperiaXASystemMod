.class public Lcom/sonyericsson/conversations/ui/branding/PartialBrandingPolicy;
.super Ljava/lang/Object;
.source "PartialBrandingPolicy.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/branding/PartialBrandingPolicy;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getJoynContactIndicatorVisibility()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x8

    return v0
.end method

.method public getJoynConversationIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 32
    const/16 v0, 0x8

    return v0
.end method

.method public getJoynSettingsPreferenceCategoryTitleResId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0b0115

    return v0
.end method

.method public getRcsServiceCheckBoxPreferenceSummaryResId()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x1

    return v0
.end method

.method public getRcsServiceCheckBoxPreferenceTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/branding/PartialBrandingPolicy;->mContext:Landroid/content/Context;

    .line 57
    const v1, 0x7f0b0127

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSetupWizardEnabled()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public update(Z)V
    .locals 0
    .param p1, "rcseConfigured"    # Z

    .prologue
    .line 46
    return-void
.end method
