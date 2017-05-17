.class Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/animation/Scenario$Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->changeImage(Landroid/widget/ImageView;I)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
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
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;
    .param p2, "val$resId"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;->this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 145
    iget v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;->val$resId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder$4;->call(Landroid/widget/ImageView;)V

    return-void
.end method
