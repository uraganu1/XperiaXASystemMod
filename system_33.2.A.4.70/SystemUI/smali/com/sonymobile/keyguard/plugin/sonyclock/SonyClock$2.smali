.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;
.super Landroid/database/ContentObserver;
.source "SonyClock.java"


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
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;->onChange(ZLandroid/net/Uri;)V

    .line 128
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap2(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    .line 133
    return-void
.end method
