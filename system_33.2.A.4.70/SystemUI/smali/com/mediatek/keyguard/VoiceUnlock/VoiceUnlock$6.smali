.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$6;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->initializeView(Landroid/view/View;)V
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
    .line 371
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$6;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    const-string/jumbo v0, "VoiceUnlock"

    const-string/jumbo v1, "Press cancel key of voice unlock view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$6;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method
