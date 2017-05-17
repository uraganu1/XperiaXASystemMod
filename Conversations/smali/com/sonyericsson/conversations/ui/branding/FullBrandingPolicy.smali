.class public Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;
.super Ljava/lang/Object;
.source "FullBrandingPolicy.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRcseConfigured:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rcseConfigured"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->mRcseConfigured:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getJoynContactIndicatorVisibility()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getJoynConversationIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I
    .locals 4
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 41
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->mRcseConfigured:Z

    if-eqz v2, :cond_0

    .line 42
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v2

    .line 43
    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 42
    if-ne v2, v3, :cond_1

    .line 44
    :cond_0
    return v1

    .line 47
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown conversation type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 61
    return v1

    .line 49
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v2

    .line 50
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    .line 49
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :pswitch_1
    return v0

    .line 57
    :pswitch_2
    return v1

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getJoynSettingsPreferenceCategoryTitleResId()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0b0116

    return v0
.end method

.method public getRcsServiceCheckBoxPreferenceSummaryResId()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0b0129

    return v0
.end method

.method public getRcsServiceCheckBoxPreferenceTitle()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->mContext:Landroid/content/Context;

    .line 91
    const v4, 0x7f0b0128

    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    const-string/jumbo v4, " J"

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v1, "spannableString":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f02004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "joynDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 95
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 94
    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 97
    .local v2, "stringLen":I
    new-instance v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 98
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x11

    .line 97
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    return-object v1
.end method

.method public isSetupWizardEnabled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public update(Z)V
    .locals 0
    .param p1, "rcseConfigured"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;->mRcseConfigured:Z

    .line 76
    return-void
.end method
