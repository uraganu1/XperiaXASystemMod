.class public Lcom/sonymobile/keyguard/time/ElapsedRealtimeClock;
.super Ljava/lang/Object;
.source "ElapsedRealtimeClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/time/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
