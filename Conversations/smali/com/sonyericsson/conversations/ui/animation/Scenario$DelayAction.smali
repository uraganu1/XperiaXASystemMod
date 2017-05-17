.class Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayAction"
.end annotation


# instance fields
.field private final mDelayMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;->mDelayMillis:I

    .line 241
    return-void
.end method


# virtual methods
.method public start(Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
    .locals 4
    .param p1, "onCompleteListener"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    .prologue
    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction$1;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V

    .line 252
    iget v2, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;->mDelayMillis:I

    int-to-long v2, v2

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method
