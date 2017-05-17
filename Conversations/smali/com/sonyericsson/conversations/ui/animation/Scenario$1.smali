.class Lcom/sonyericsson/conversations/ui/animation/Scenario$1;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/animation/Scenario;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/animation/Scenario;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/animation/Scenario;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$1;->this$0:Lcom/sonyericsson/conversations/ui/animation/Scenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$1;->this$0:Lcom/sonyericsson/conversations/ui/animation/Scenario;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario;->-wrap0(Lcom/sonyericsson/conversations/ui/animation/Scenario;)V

    .line 37
    return-void
.end method
