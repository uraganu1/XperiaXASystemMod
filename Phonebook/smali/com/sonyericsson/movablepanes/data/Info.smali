.class public abstract Lcom/sonyericsson/movablepanes/data/Info;
.super Ljava/lang/Object;
.source "Info.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getUniqueId()J
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
