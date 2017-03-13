.class Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$3;
.super Ljava/lang/Object;
.source "AntiTheftManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method constructor <init>(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$3;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 500
    const-string/jumbo v0, "AntiTheftManager"

    const-string/jumbo v1, "onServiceConnected() -- PPL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {p2}, Lcom/mediatek/common/ppl/IPplManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/ppl/IPplManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-set0(Lcom/mediatek/common/ppl/IPplManager;)Lcom/mediatek/common/ppl/IPplManager;

    .line 498
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 509
    const-string/jumbo v0, "AntiTheftManager"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-set0(Lcom/mediatek/common/ppl/IPplManager;)Lcom/mediatek/common/ppl/IPplManager;

    .line 507
    return-void
.end method
