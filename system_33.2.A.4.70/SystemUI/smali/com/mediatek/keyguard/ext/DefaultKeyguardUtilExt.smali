.class public Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;
.super Ljava/lang/Object;
.source "DefaultKeyguardUtilExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.IKeyguardUtilExt"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultKeyguardUtilExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeCarrierTextGravity(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 81
    const-string/jumbo v0, "DefaultKeyguardUtilExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customizeCarrierTextGravity view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public customizePinPukLockView(ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 71
    const-string/jumbo v0, "DefaultKeyguardUtilExt"

    const-string/jumbo v1, "customizePinPukLockView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public showToastWhenUnlockPinPuk(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simLockType"    # I

    .prologue
    .line 58
    const-string/jumbo v0, "DefaultKeyguardUtilExt"

    const-string/jumbo v1, "showToastWhenUnlockPinPuk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
