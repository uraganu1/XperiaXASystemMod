.class Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$3;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->remove(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$3;->this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, Landroid/view/View;

    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$3;->call(Landroid/view/View;)V

    return-void
.end method
