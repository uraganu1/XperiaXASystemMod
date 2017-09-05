.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;
.super Ljava/lang/Object;
.source "SonyClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleXChanged(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap1(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    .line 141
    return-void
.end method

.method public onScaleYChanged(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$3;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap1(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    .line 146
    return-void
.end method
