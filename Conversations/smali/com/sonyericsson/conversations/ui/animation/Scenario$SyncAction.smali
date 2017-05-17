.class abstract Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SyncAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;-><init>()V

    return-void
.end method


# virtual methods
.method abstract call()V
.end method

.method public start(Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
    .locals 0
    .param p1, "onCompleteListener"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$SyncAction;->call()V

    .line 215
    invoke-interface {p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;->onComplete()V

    .line 213
    return-void
.end method
