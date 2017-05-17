.class Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction$1;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;->start(Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;

.field final synthetic val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;
    .param p2, "val$onCompleteListener"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction$1;->this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction$1;->val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$DelayAction$1;->val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;->onComplete()V

    .line 249
    return-void
.end method
