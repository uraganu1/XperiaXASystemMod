.class Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "MediatekDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;


# direct methods
.method public constructor <init>(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$FormatChangeObserver;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$FormatChangeObserver;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-static {v0}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;->-wrap0(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$FormatChangeObserver;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-static {v0}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;->-wrap1(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)V

    .line 106
    return-void
.end method
