.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$2;
.super Landroid/os/Handler;
.source "VoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;
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
    .line 113
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$2;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$2;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap0(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;IILandroid/os/Bundle;)V

    .line 114
    return-void
.end method
