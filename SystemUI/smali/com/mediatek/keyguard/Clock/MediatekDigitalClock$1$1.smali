.class Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1$1;
.super Ljava/lang/Object;
.source "MediatekDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1$1;->this$1:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1$1;->this$1:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;

    iget-object v0, v0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-static {v0}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;->-wrap1(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)V

    .line 69
    return-void
.end method
