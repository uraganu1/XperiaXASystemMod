.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$5;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$5;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$5;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->stop()Z

    .line 201
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$5;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->pokeWakelock(I)V

    .line 199
    return-void
.end method
