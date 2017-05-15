.class final enum Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
.super Ljava/lang/Enum;
.source "DependOnCapabilityUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VoiceCapability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

.field private static synthetic -com_sonymobile_settings_preference_util_DependOnCapabilityUtil$VoiceCapabilitySwitchesValues:[I

.field public static final enum ANY:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

.field public static final enum AVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

.field public static final enum UNAVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_sonymobile_settings_preference_util_DependOnCapabilityUtil$VoiceCapabilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->-com_sonymobile_settings_preference_util_DependOnCapabilityUtil$VoiceCapabilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->-com_sonymobile_settings_preference_util_DependOnCapabilityUtil$VoiceCapabilitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->values()[Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ANY:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    invoke-virtual {v1}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->AVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    invoke-virtual {v1}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->UNAVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    invoke-virtual {v1}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->-com_sonymobile_settings_preference_util_DependOnCapabilityUtil$VoiceCapabilitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    const-string/jumbo v1, "ANY"

    const-string/jumbo v2, "any"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ANY:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    .line 25
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    const-string/jumbo v1, "AVAILABLE"

    const-string/jumbo v2, "available"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->AVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    .line 26
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    const-string/jumbo v1, "UNAVAILABLE"

    const-string/jumbo v2, "unavailable"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->UNAVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ANY:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->AVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->UNAVAILABLE:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->$VALUES:[Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->mValue:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static fromName(Ljava/lang/String;)Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->values()[Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 35
    .local v0, "cap":Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
    iget-object v4, v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "cap":Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
    :cond_1
    sget-object v1, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ANY:Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    return-object v1
.end method

.method static isVoiceCapable(Landroid/content/Context;Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "capability"    # Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->-getcom_sonymobile_settings_preference_util_DependOnCapabilityUtil$VoiceCapabilitySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 50
    return v0

    .line 45
    :pswitch_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 47
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;->$VALUES:[Lcom/sonymobile/settings/preference/util/DependOnCapabilityUtil$VoiceCapability;

    return-object v0
.end method
