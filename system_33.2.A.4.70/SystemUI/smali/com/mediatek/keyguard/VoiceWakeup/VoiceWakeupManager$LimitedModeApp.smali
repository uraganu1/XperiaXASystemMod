.class Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;
.super Ljava/lang/Object;
.source "VoiceWakeupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitedModeApp"
.end annotation


# instance fields
.field public limtedModeAppName:Ljava/lang/String;

.field public normalModeAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;
    .param p2, "normalName"    # Ljava/lang/String;
    .param p3, "limitedName"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;->normalModeAppName:Ljava/lang/String;

    .line 308
    iput-object p3, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;->limtedModeAppName:Ljava/lang/String;

    .line 306
    return-void
.end method
