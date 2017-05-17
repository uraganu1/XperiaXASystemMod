.class public final Lcom/sonymobile/holla/CallPlusIntents;
.super Ljava/lang/Object;
.source "CallPlusIntents.java"


# static fields
.field public static final ACTION_CALLPLUS_CAPABILITIES:Ljava/lang/String; = "action_callplus_capabilities"

.field private static final ACTION_COMPOSE_CALL:Ljava/lang/String; = "com.sonymobile.holla.COMPOSE_CALL"

.field private static final ACTION_TUTORIAL:Ljava/lang/String; = "com.sonymobile.holla.TUTORIAL"

.field private static final CALLPLUS_SERVICE_NAME:Ljava/lang/String; = "com.sonymobile.holla.rcid.RcidService"

.field public static final CALLPLUS_SERVICE_PACKAGE:Ljava/lang/String; = "com.sonymobile.holla.rcid"

.field public static final EXTRA_CALLPLUS_CALLCOMPOSER_CAPABILITIES:Ljava/lang/String; = "extra_callplus_callcomposer_capabilities"

.field private static final EXTRA_CALLPLUS_OPENED_FROM:Ljava/lang/String; = "extra_callplus_opened_from"

.field public static final EXTRA_CALLPLUS_PHONENUMBER:Ljava/lang/String; = "extra_callplus_phonenumber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBindIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sonymobile.holla.rcid"

    const-string/jumbo v3, "com.sonymobile.holla.rcid.RcidService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    return-object v0
.end method

.method public static getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sonymobile.holla.COMPOSE_CALL"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_callplus_opened_from"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_callplus_phonenumber"

    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public static getEnrichedCallingTutorialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sonymobile.holla.TUTORIAL"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_callplus_opened_from"

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    return-object v0
.end method
