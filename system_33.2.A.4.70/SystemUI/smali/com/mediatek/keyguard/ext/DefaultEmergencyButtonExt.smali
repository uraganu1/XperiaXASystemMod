.class public Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;
.super Ljava/lang/Object;
.source "DefaultEmergencyButtonExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.IEmergencyButtonExt"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DefaultEmergencyButtonExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeEmergencyIntent(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "slotId"    # I

    .prologue
    .line 69
    return-void
.end method

.method public showEccByServiceState([ZI)Z
    .locals 5
    .param p1, "isServiceSupportEcc"    # [Z
    .param p2, "slotId"    # I

    .prologue
    .line 55
    array-length v1, p1

    .line 56
    .local v1, "simSlotCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 58
    const-string/jumbo v2, "DefaultEmergencyButtonExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showEccByServiceState i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    const-string/jumbo v4, " isServiceSupportEcc[i] = "

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    aget-boolean v4, p1, v0

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    return v2

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public showEccInNonSecureUnlock()Z
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v0, "DefaultEmergencyButtonExt"

    const-string/jumbo v1, "showEccInNonSecureUnlock return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    return v0
.end method
