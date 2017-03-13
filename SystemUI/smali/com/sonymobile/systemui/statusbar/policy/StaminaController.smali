.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/StaminaController;
.super Ljava/lang/Object;
.source "StaminaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
    }
.end annotation


# static fields
.field public static final CONTENT_URI_NEXT_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

.field public static final CONTENT_URI_STAMINA_ACTIVATED:Landroid/net/Uri;

.field public static final CONTENT_URI_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/active_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->CONTENT_URI_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

    .line 20
    const-string/jumbo v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/next_active_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->CONTENT_URI_NEXT_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

    .line 22
    const-string/jumbo v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/activated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaController;->CONTENT_URI_STAMINA_ACTIVATED:Landroid/net/Uri;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
.end method

.method public abstract getStaminaActivationState()I
.end method

.method public abstract isStaminaEnabled()Z
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
.end method

.method public abstract setStaminaActivationNextState()V
.end method
