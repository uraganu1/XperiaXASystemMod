.class Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$2;
.super Landroid/os/Handler;
.source "AntiTheftManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 380
    iput-object p1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$2;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 383
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$2;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-wrap0(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;IZ)V

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
